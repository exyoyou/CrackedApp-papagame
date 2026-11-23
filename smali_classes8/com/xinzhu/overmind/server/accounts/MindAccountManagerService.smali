.class public Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
.super Lcom/xinzhu/overmind/server/accounts/e$b;
.source "SourceFile"

# interfaces
.implements Lcom/xinzhu/overmind/server/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$z;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$w;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$y;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;,
        Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

.field private static final ACCOUNTS_FILE_AUTH_TOKEN:Ljava/lang/String; = "authtoken.db"

.field private static final ACCOUNTS_FILE_AUTH_TOKEN_MAGIC:[B

.field private static final ACCOUNTS_FILE_DATA:Ljava/lang/String; = "accounts.db"

.field private static final ACCOUNTS_FILE_DATA_MAGIC:[B

.field private static final ACCOUNTS_FILE_PREVIOUS_NAME:Ljava/lang/String; = "previous.db"

.field private static final ACCOUNTS_FILE_PREVIOUS_NAME_MAGIC:[B

.field private static final ACCOUNTS_FILE_UID_GRANT:Ljava/lang/String; = "grant.db"

.field private static final ACCOUNTS_FILE_UID_GRANT_MAGIC:[B

.field private static final ACCOUNTS_FILE_USER_DATA:Ljava/lang/String; = "userdata.db"

.field private static final ACCOUNTS_FILE_USER_DATA_MAGIC:[B

.field private static final ACCOUNTS_FILE_VISIBILITY:Ljava/lang/String; = "visibility.db"

.field private static final ACCOUNTS_FILE_VISIBILITY_MAGIC:[B

.field public static final ACCOUNT_ACCESS_TOKEN_TYPE:Ljava/lang/String; = "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

.field public static final ACTION_ACCOUNT_REMOVED:Ljava/lang/String; = "android.accounts.action.ACCOUNT_REMOVED"

.field public static final ACTION_VISIBLE_ACCOUNTS_CHANGED:Ljava/lang/String; = "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field public static final ERROR_CODE_MANAGEMENT_DISABLED_FOR_ACCOUNT_TYPE:I = 0x65

.field public static final ERROR_CODE_USER_RESTRICTED:I = 0x64

.field public static final KEY_ACCOUNT_ACCESS_ID:Ljava/lang/String; = "accountAccessId"

.field public static final KEY_ACCOUNT_SESSION_BUNDLE:Ljava/lang/String; = "accountSessionBundle"

.field public static final KEY_CUSTOM_TOKEN_EXPIRY:Ljava/lang/String; = "android.accounts.expiry"

.field public static final KEY_LAST_AUTHENTICATED_TIME:Ljava/lang/String; = "lastAuthenticatedTime"

.field public static final KEY_NOTIFY_ON_FAILURE:Ljava/lang/String; = "notifyOnAuthFailure"

.field private static final MESSAGE_COPY_SHARED_ACCOUNT:I = 0x4

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field public static final PACKAGE_NAME_KEY_LEGACY_NOT_VISIBLE:Ljava/lang/String; = "android:accounts:key_legacy_not_visible"

.field public static final PACKAGE_NAME_KEY_LEGACY_VISIBLE:Ljava/lang/String; = "android:accounts:key_legacy_visible"

.field private static final SIGNATURE_CHECK_MATCH:I = 0x1

.field private static final SIGNATURE_CHECK_MISMATCH:I = 0x0

.field private static final SIGNATURE_CHECK_UID_MATCH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MAccountManagerService"

.field public static final VISIBILITY_NOT_VISIBLE:I = 0x3

.field public static final VISIBILITY_UNDEFINED:I = 0x0

.field public static final VISIBILITY_USER_MANAGED_NOT_VISIBLE:I = 0x4

.field public static final VISIBILITY_USER_MANAGED_VISIBLE:I = 0x2

.field public static final VISIBILITY_VISIBLE:I = 0x1

.field private static final sService:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;


# instance fields
.field private final mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

.field private mContext:Landroid/content/Context;

.field final mHandler:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

.field private final mPackageMonitor:Lcom/xinzhu/overmind/server/pm/r;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserListener:Lcom/xinzhu/overmind/server/user/b;

.field private mUserManager:Lma/i;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sService:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [Landroid/accounts/Account;

    .line 10
    .line 11
    sput-object v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    new-array v1, v0, [B

    .line 15
    .line 16
    fill-array-data v1, :array_0

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_DATA_MAGIC:[B

    .line 20
    .line 21
    new-array v1, v0, [B

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    sput-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_USER_DATA_MAGIC:[B

    .line 27
    .line 28
    new-array v1, v0, [B

    .line 29
    .line 30
    fill-array-data v1, :array_2

    .line 31
    .line 32
    .line 33
    sput-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_AUTH_TOKEN_MAGIC:[B

    .line 34
    .line 35
    new-array v1, v0, [B

    .line 36
    .line 37
    fill-array-data v1, :array_3

    .line 38
    .line 39
    .line 40
    sput-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_VISIBILITY_MAGIC:[B

    .line 41
    .line 42
    new-array v1, v0, [B

    .line 43
    .line 44
    fill-array-data v1, :array_4

    .line 45
    .line 46
    .line 47
    sput-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_PREVIOUS_NAME_MAGIC:[B

    .line 48
    .line 49
    new-array v0, v0, [B

    .line 50
    .line 51
    fill-array-data v0, :array_5

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_UID_GRANT_MAGIC:[B

    .line 55
    .line 56
    new-instance v0, Landroid/content/Intent;

    .line 57
    .line 58
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :array_0
    .array-data 1
        0x41t
        0x43t
        0x43t
        0x54t
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 1
        0x41t
        0x43t
        0x43t
        0x55t
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_2
    .array-data 1
        0x41t
        0x43t
        0x43t
        0x56t
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :array_3
    .array-data 1
        0x41t
        0x43t
        0x43t
        0x57t
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_4
    .array-data 1
        0x41t
        0x43t
        0x43t
        0x58t
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_5
    .array-data 1
        0x41t
        0x43t
        0x43t
        0x59t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/e$b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUserManager:Lma/i;

    .line 6
    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    new-instance v0, Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 33
    .line 34
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$i;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$i;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUserListener:Lcom/xinzhu/overmind/server/user/b;

    .line 40
    .line 41
    new-instance v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$j;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mPackageMonitor:Lcom/xinzhu/overmind/server/pm/r;

    .line 47
    .line 48
    new-instance v2, Lcom/xinzhu/overmind/server/accounts/a;

    .line 49
    .line 50
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-direct {v2, v3}, Lcom/xinzhu/overmind/server/accounts/a;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    .line 58
    .line 59
    new-instance v2, Lcom/xinzhu/overmind/server/m;

    .line 60
    .line 61
    const/4 v3, -0x2

    .line 62
    const/4 v4, 0x1

    .line 63
    const-string v5, "MAccountManagerService"

    .line 64
    .line 65
    invoke-direct {v2, v5, v3, v4}, Lcom/xinzhu/overmind/server/m;-><init>(Ljava/lang/String;IZ)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-direct {v3, p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/os/Looper;)V

    .line 78
    .line 79
    .line 80
    iput-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mHandler:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

    .line 81
    .line 82
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2, v0}, Lcom/xinzhu/overmind/server/user/c;->registerListener(Lcom/xinzhu/overmind/server/user/b;)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->addPackageMonitor(Lcom/xinzhu/overmind/server/pm/r;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public static synthetic a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->lambda$removeAccountInternal$0(Landroid/accounts/Account;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->purgeUserData(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->purgeOldGrantsAll()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1000(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1100(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Lcom/xinzhu/overmind/server/accounts/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1900(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->removeVisibilityValuesForPackage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2200(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->removeAccountInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2300(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2500(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$2600(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAuthTokenToDatabase(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2700(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveCachedToken(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2800(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->doNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2900(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3000(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3100(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$3200(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Ljava/lang/String;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Ljava/lang/String;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$700(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$900(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getSigninRequiredNotificationId(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private accountExistsCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    .line 7
    .line 8
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object p1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    .line 18
    .line 19
    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, [Landroid/accounts/Account;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    array-length v1, p1

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_0
    if-ge v3, v1, :cond_1

    .line 32
    .line 33
    aget-object v4, p1, v3

    .line 34
    .line 35
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    monitor-exit v0

    .line 46
    const/4 p1, 0x1

    .line 47
    return p1

    .line 48
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    monitor-exit v0

    .line 52
    return v2

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p1
.end method

.method private accountTypeManagesContacts(Ljava/lang/String;I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    .line 10
    .line 11
    invoke-interface {v3, p2}, Lcom/xinzhu/overmind/server/accounts/d;->c(I)Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->a:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 37
    .line 38
    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    return p1

    .line 48
    :cond_2
    return v0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method private addAccountInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 p5, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return p5

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    .line 9
    .line 10
    invoke-direct {v1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccount;-><init>(Landroid/accounts/Account;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    const-string p1, "MAccountManagerService"

    .line 24
    .line 25
    new-instance p3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string p4, "insertAccountIntoDatabase: "

    .line 31
    .line 32
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, ", skipping since the account already exists"

    .line 39
    .line 40
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/utils/q;->k(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return p5

    .line 52
    :cond_1
    iput-object p3, v1, Lcom/xinzhu/overmind/server/accounts/MindAccount;->c:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 62
    .line 63
    .line 64
    if-eqz p4, :cond_3

    .line 65
    .line 66
    new-instance p3, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object p5

    .line 75
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p5

    .line 79
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountUserDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    if-eqz p6, :cond_4

    .line 110
    .line 111
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result p4

    .line 123
    if-eqz p4, :cond_4

    .line 124
    .line 125
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p4

    .line 129
    check-cast p4, Ljava/util/Map$Entry;

    .line 130
    .line 131
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p5

    .line 135
    move-object v3, p5

    .line 136
    check-cast v3, Ljava/lang/String;

    .line 137
    .line 138
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p4

    .line 142
    check-cast p4, Ljava/lang/Integer;

    .line 143
    .line 144
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    const/4 v5, 0x0

    .line 149
    move-object v1, p0

    .line 150
    move-object v2, p2

    .line 151
    move-object v6, p1

    .line 152
    invoke-direct/range {v1 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->insertAccountIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 157
    .line 158
    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-direct {p0, p2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 161
    .line 162
    .line 163
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 168
    .line 169
    .line 170
    const/4 p1, 0x1

    .line 171
    return p1

    .line 172
    :catchall_0
    move-exception p1

    .line 173
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    throw p1
.end method

.method public static synthetic c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->lambda$grantAppPermission$1(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V

    return-void
.end method

.method private calculatePackageSignatureDigest(Ljava/lang/String;)[B
    .locals 6

    .line 1
    const-string v0, "MAccountManagerService"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "SHA-256"

    .line 5
    .line 6
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/16 v4, 0x40

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-virtual {v3, p1, v4, v5}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "Could not find packageinfo for: "

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v0, p1}, Lcom/xinzhu/overmind/utils/q;->k(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_0
    iget-object p1, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 45
    .line 46
    array-length v3, p1

    .line 47
    :goto_0
    if-ge v5, v3, :cond_1

    .line 48
    .line 49
    aget-object v4, p1, v5

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p1

    .line 62
    const-string v2, "SHA-256 should be available"

    .line 63
    .line 64
    invoke-static {v0, v2, p1}, Lcom/xinzhu/overmind/utils/q;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    move-object v2, v1

    .line 68
    :cond_1
    if-nez v2, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_1
    return-object v1
.end method

.method private canUserModifyAccounts(II)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method private canUserModifyAccountsForType(ILjava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(IZ)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    move-result v0

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-direct {p0, v3, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 0

    if-eqz p4, :cond_0

    .line 10
    invoke-static {p2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->w(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;

    move-result-object p4

    invoke-virtual {p4}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->I()Landroid/os/UserHandle;

    move-result-object p4

    .line 11
    invoke-virtual {p0, p1, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p4

    if-eqz p4, :cond_1

    :cond_0
    const-string p4, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 12
    invoke-direct {p0, p1, p4, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    move-result-object p1

    .line 13
    invoke-static {p2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->w(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;

    move-result-object p2

    .line 14
    invoke-direct {p0, p1, p3, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Ljava/lang/String;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    :cond_1
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V
    .locals 4

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 9
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V
    .locals 4

    .line 4
    invoke-static {p2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    move-result v0

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 6
    invoke-direct {p0, v3, p2, p1, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Ljava/lang/String;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    return-void
.end method

.method private cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Ljava/lang/String;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "notification"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private checkPackageSignature(Ljava/lang/String;II)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    .line 10
    .line 11
    invoke-interface {v3, p3}, Lcom/xinzhu/overmind/server/accounts/d;->c(I)Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;

    .line 33
    .line 34
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->a:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    .line 37
    .line 38
    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget v2, v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->d:I

    .line 47
    .line 48
    if-ne v2, p2, :cond_2

    .line 49
    .line 50
    const/4 p1, 0x2

    .line 51
    return p1

    .line 52
    :cond_2
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget v1, v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->d:I

    .line 57
    .line 58
    const/16 v3, 0x10

    .line 59
    .line 60
    invoke-virtual {v2, v1, p2, v3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->hasSignatureCapability(III)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    return p1

    .line 68
    :cond_3
    return v0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method private checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p3, 0x2

    .line 9
    new-array p3, p3, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    aput-object p1, p3, p4

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    aput-object p2, p3, p1

    .line 20
    .line 21
    const-string p1, "caller uid %s cannot access %s accounts"

    .line 22
    .line 23
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string p3, "  "

    .line 33
    .line 34
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const-string p3, "MAccountManagerService"

    .line 45
    .line 46
    invoke-static {p3, p2}, Lcom/xinzhu/overmind/utils/q;->k(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    new-instance p2, Ljava/lang/SecurityException;

    .line 50
    .line 51
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p2
.end method

.method private completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v13

    .line 7
    :try_start_0
    new-instance v15, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$l;

    .line 8
    .line 9
    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    move-object v1, v15

    .line 17
    move-object/from16 v2, p0

    .line 18
    .line 19
    move-object/from16 v3, p4

    .line 20
    .line 21
    move-object/from16 v4, p1

    .line 22
    .line 23
    move-object/from16 v10, p3

    .line 24
    .line 25
    move/from16 v11, p5

    .line 26
    .line 27
    move-object/from16 v12, p2

    .line 28
    .line 29
    invoke-direct/range {v1 .. v12}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$l;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v15}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method private doNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method private filterAccounts(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .locals 7

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v0, p4

    .line 9
    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    array-length v2, p2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_1
    if-ge v3, v2, :cond_3

    .line 17
    .line 18
    aget-object v4, p2, v3

    .line 19
    .line 20
    invoke-direct {p0, v4, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 v6, 0x1

    .line 29
    if-eq v5, v6, :cond_1

    .line 30
    .line 31
    const/4 v6, 0x2

    .line 32
    if-eq v5, v6, :cond_1

    .line 33
    .line 34
    if-eqz p5, :cond_2

    .line 35
    .line 36
    const/4 v6, 0x4

    .line 37
    if-ne v5, v6, :cond_2

    .line 38
    .line 39
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->filterSharedAccounts(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    new-array p2, p2, [Landroid/accounts/Account;

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, [Landroid/accounts/Account;

    .line 68
    .line 69
    return-object p1
.end method

.method private filterSharedAccounts(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    return-object p2
.end method

.method public static get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sService:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 2
    .line 3
    return-object v0
.end method

.method private getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.accounts.action.ACCOUNT_REMOVED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->queryIntentBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 56
    .line 57
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 58
    .line 59
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 60
    .line 61
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-direct {p0, p1, v2, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x1

    .line 72
    if-eq v3, v4, :cond_2

    .line 73
    .line 74
    const/4 v4, 0x2

    .line 75
    if-ne v3, v4, :cond_1

    .line 76
    .line 77
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    return-object v1
.end method

.method private getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I
    .locals 1

    .line 1
    iget-object v0, p3, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Integer;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    monitor-exit v0

    .line 23
    return p1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
.end method

.method private getAccounts([I)[Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;
    .locals 12

    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, p1, v4

    .line 14
    invoke-virtual {p0, v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    .line 15
    iget v9, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsFromCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v6

    .line 16
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 17
    new-instance v10, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;

    invoke-direct {v10, v9, v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;

    .line 19
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;

    return-object p1
.end method

.method private getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "MAccountManagerService"

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Package not found "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xinzhu/overmind/utils/q;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, p4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v3, p4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    if-eqz v1, :cond_1

    .line 8
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 9
    invoke-direct {p0, v5, p1, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    move-result-object v6

    .line 10
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 12
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p4, v0, p2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->filterSharedAccounts(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .locals 8

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    iget v2, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 8
    .line 9
    const/16 v3, 0x3e8

    .line 10
    .line 11
    if-eq p2, v2, :cond_1

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    .line 17
    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string p4, "User "

    .line 24
    .line 25
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget p4, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 29
    .line 30
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p4, " trying to get account for "

    .line 34
    .line 35
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 50
    const-string v2, "MAccountManagerService"

    .line 51
    .line 52
    invoke-static {v2, v0}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v4, "getAccounts: accountType "

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v4, ", caller\'s uid "

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    iget v4, v4, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, ", pid "

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v2, v0}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-static {v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-direct {p0, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/4 v2, -0x1

    .line 113
    if-eq p4, v2, :cond_4

    .line 114
    .line 115
    invoke-static {v1, v3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->B(II)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_3

    .line 120
    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    :cond_3
    move-object v5, p3

    .line 130
    move v4, p4

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    move-object v5, p5

    .line 133
    move v4, v1

    .line 134
    :goto_1
    invoke-direct {p0, v4, p2, v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result p4

    .line 142
    if-nez p4, :cond_7

    .line 143
    .line 144
    if-eqz p1, :cond_5

    .line 145
    .line 146
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p4

    .line 150
    if-nez p4, :cond_5

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p4

    .line 157
    if-eqz p4, :cond_6

    .line 158
    .line 159
    new-instance p3, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    :cond_6
    move-object v6, p3

    .line 168
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 169
    .line 170
    .line 171
    move-result-wide p3

    .line 172
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    move-object v2, p0

    .line 177
    move v7, p6

    .line 178
    invoke-direct/range {v2 .. v7}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    .line 179
    .line 180
    .line 181
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    .line 184
    .line 185
    return-object p1

    .line 186
    :catchall_0
    move-exception p1

    .line 187
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :cond_7
    :goto_2
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 192
    .line 193
    return-object p1
.end method

.method private getAccountsInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)[",
            "Landroid/accounts/Account;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p4

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v4, v1

    .line 21
    check-cast v4, Ljava/lang/String;

    .line 22
    .line 23
    move-object v2, p0

    .line 24
    move-object v3, p1

    .line 25
    move v5, p2

    .line 26
    move-object v6, p3

    .line 27
    move v7, p5

    .line 28
    invoke-virtual/range {v2 .. v7}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsFromCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    new-array p1, p1, [Landroid/accounts/Account;

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-ge p2, p3, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    check-cast p3, Landroid/accounts/Account;

    .line 60
    .line 61
    aput-object p3, p1, p2

    .line 62
    .line 63
    add-int/lit8 p2, p2, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    return-object p1
.end method

.method private getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/accounts/d;->e(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/xinzhu/overmind/server/accounts/d;->c(I)Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-array v0, v0, [Landroid/accounts/AuthenticatorDescription;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    .line 38
    .line 39
    aput-object v2, v0, v1

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-object v0
.end method

.method private getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;
    .locals 4

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    new-instance v2, Landroid/util/Pair;

    .line 15
    .line 16
    new-instance v3, Landroid/util/Pair;

    .line 17
    .line 18
    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-direct {v2, v3, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    check-cast p3, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 37
    .line 38
    if-nez p3, :cond_0

    .line 39
    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "MAccountManagerService:38:"

    .line 46
    .line 47
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, ":"

    .line 58
    .line 59
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance p3, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 74
    .line 75
    const/16 p2, 0x26

    .line 76
    .line 77
    invoke-direct {p3, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_0
    monitor-exit v1

    .line 88
    return-object p3

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw p1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    aget-object v2, v0, v1

    .line 19
    .line 20
    array-length v3, v0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-ne v3, v4, :cond_1

    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_1
    array-length v3, v0

    .line 26
    const v4, 0x7fffffff

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    if-ge v5, v3, :cond_3

    .line 31
    .line 32
    aget-object v6, v0, v5

    .line 33
    .line 34
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    invoke-virtual {v7, v6, v1, v8}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 49
    .line 50
    if-ge v7, v4, :cond_2

    .line 51
    .line 52
    move-object v2, v6

    .line 53
    move v4, v7

    .line 54
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    return-object v2
.end method

.method private getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/Map;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "MAccountManagerService"

    .line 14
    .line 15
    const-string v1, "Visibility was not initialized"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/q;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-object v0
.end method

.method private getRequestingPackages(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    monitor-enter v1

    .line 11
    const/4 v2, 0x2

    .line 12
    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object v4, v3, v5

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v6, 0x1

    .line 21
    aput-object v4, v3, v6

    .line 22
    .line 23
    :goto_0
    if-ge v5, v2, :cond_1

    .line 24
    .line 25
    aget-object v4, v3, v5

    .line 26
    .line 27
    invoke-static {p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/util/Map;

    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    new-instance v1, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Ljava/lang/String;

    .line 70
    .line 71
    invoke-direct {p0, p1, v2, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    return-object v1

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw p1
.end method

.method private getSigninRequiredNotificationId(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "MAccountManagerService:37:"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/accounts/Account;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 40
    .line 41
    const/16 v3, 0x25

    .line 42
    .line 43
    invoke-direct {v2, v1, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;-><init>(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-object v1, v2

    .line 54
    :cond_0
    monitor-exit v0

    .line 55
    return-object v1

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1
.end method

.method private getTypesForCaller(IIZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    .line 11
    .line 12
    invoke-interface {v3, p2}, Lcom/xinzhu/overmind/server/accounts/d;->c(I)Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;

    .line 34
    .line 35
    if-nez p3, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget v3, v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->d:I

    .line 42
    .line 43
    const/16 v4, 0x10

    .line 44
    .line 45
    invoke-virtual {v2, v3, p1, v4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->hasSignatureCapability(III)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    :cond_1
    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->a:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 54
    .line 55
    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-object v0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method private getTypesManagedByCaller(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method private getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p3, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method private getUserAccountsForCaller()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private getUserManager()Lma/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUserManager:Lma/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lma/i;->d()Lma/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUserManager:Lma/i;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUserManager:Lma/i;

    .line 12
    .line 13
    return-object v0
.end method

.method private handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->startChooseAccountActivityWithAccounts(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    array-length p3, p2

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p3, v0, :cond_1

    .line 14
    .line 15
    new-instance p3, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    aget-object v1, p2, v0

    .line 22
    .line 23
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "authAccount"

    .line 26
    .line 27
    invoke-virtual {p3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    aget-object p2, p2, v0

    .line 31
    .line 32
    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "accountType"

    .line 35
    .line 36
    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-direct {p0, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    move-result v2

    invoke-direct {p0, p1, v1, p3, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object p3

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {v0, p3, p2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->o(ILjava/lang/String;Landroid/accounts/Account;)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0, p3, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->p(ILandroid/accounts/Account;)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    :goto_0
    const-wide/16 v3, 0x0

    .line 34
    .line 35
    cmp-long p3, p1, v3

    .line 36
    .line 37
    if-lez p3, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v2, 0x0

    .line 41
    :goto_1
    monitor-exit v1

    .line 42
    return v2

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p1
.end method

.method private insertAccountIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, [Landroid/accounts/Account;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    array-length v2, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 18
    .line 19
    new-array v3, v3, [Landroid/accounts/Account;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    :cond_1
    new-instance v0, Ll8/a;

    .line 27
    .line 28
    invoke-direct {v0, p2}, Ll8/a;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ll8/a;->h()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    new-instance v0, Ll8/a;

    .line 38
    .line 39
    invoke-direct {v0, p2}, Ll8/a;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ll8/a;->h()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_1
    invoke-static {p2, v0}, Ll8/a;->f(Landroid/accounts/Account;Ljava/lang/String;)Ll8/a;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v0, v0, Ll8/a;->a:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Landroid/accounts/Account;

    .line 62
    .line 63
    aput-object v0, v3, v2

    .line 64
    .line 65
    iget-object p1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    .line 66
    .line 67
    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    aget-object p1, v3, v2

    .line 73
    .line 74
    return-object p1
.end method

.method private invalidateAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    .line 32
    .line 33
    iget-object v4, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Landroid/accounts/Account;

    .line 34
    .line 35
    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v5, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Landroid/accounts/Account;

    .line 48
    .line 49
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ljava/util/Map;

    .line 54
    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_0

    .line 70
    .line 71
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Ljava/util/Map$Entry;

    .line 76
    .line 77
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    check-cast v6, Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_1

    .line 88
    .line 89
    new-instance v6, Landroid/accounts/Account;

    .line 90
    .line 91
    iget-object v7, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Landroid/accounts/Account;

    .line 92
    .line 93
    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 94
    .line 95
    invoke-direct {v6, v7, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 116
    .line 117
    .line 118
    monitor-exit v1

    .line 119
    return-object v0

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    throw p1
.end method

.method private isAccountManagedByCaller(Ljava/lang/String;II)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method private isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccountsForCaller()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, [Landroid/accounts/Account;

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    array-length v0, p2

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-ge v2, v0, :cond_1

    .line 30
    .line 31
    aget-object v4, p2, v2

    .line 32
    .line 33
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    monitor-exit v1

    .line 42
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    monitor-exit v1

    .line 48
    return v3

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p1
.end method

.method private isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method private isCrossUser(II)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    .line 7
    const/16 p2, 0x3e8

    .line 8
    .line 9
    if-eq p1, p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method private isPreOApplication(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/16 v3, 0x3e8

    .line 10
    .line 11
    invoke-static {v3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v2, p1, v4, v3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 27
    .line 28
    const/16 v1, 0x1a

    .line 29
    .line 30
    if-ge p1, v1, :cond_0

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    :cond_0
    return v4

    .line 34
    :cond_1
    return v0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method private isSpecialPackageKey(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "android:accounts:key_legacy_visible"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "android:accounts:key_legacy_not_visible"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method private isSystemUid(I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isVisible(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static synthetic lambda$grantAppPermission$1(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;->a(Landroid/accounts/Account;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$removeAccountInternal$0(Landroid/accounts/Account;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static synthetic lambda$revokeAppPermission$2(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;->a(Landroid/accounts/Account;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private loadAllAccounts()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/b;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadCompatAccounts()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/b;->a()Z

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/user/c;->getUsers()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_9

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 37
    .line 38
    new-instance v2, Ljava/io/File;

    .line 39
    .line 40
    iget v3, v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;->b:I

    .line 41
    .line 42
    invoke-static {v3}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, "accounts.db"

    .line 47
    .line 48
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/4 v4, 0x1

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    .line 59
    .line 60
    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    .line 62
    .line 63
    const/4 v2, 0x4

    .line 64
    :try_start_1
    new-array v2, v2, [B

    .line 65
    .line 66
    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 67
    .line 68
    .line 69
    sget-object v6, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_DATA_MAGIC:[B

    .line 70
    .line 71
    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_8

    .line 76
    .line 77
    new-instance v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 78
    .line 79
    iget v6, v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;->b:I

    .line 80
    .line 81
    invoke-direct {v2, v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-static {v7}, Lcom/xinzhu/overmind/utils/l;->w(Ljava/io/InputStream;)[B

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    array-length v8, v6

    .line 89
    invoke-virtual {v3, v6, v5, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    .line 94
    .line 95
    sget-object v6, Lcom/xinzhu/overmind/server/accounts/MindAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 96
    .line 97
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    if-eqz v6, :cond_7

    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_1

    .line 112
    .line 113
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    check-cast v8, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    .line 118
    .line 119
    iget-object v9, v8, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Landroid/accounts/Account;

    .line 120
    .line 121
    invoke-direct {p0, v2, v9}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->insertAccountIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 122
    .line 123
    .line 124
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    iget-object v10, v8, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Landroid/accounts/Account;

    .line 129
    .line 130
    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_1
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadUserData(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    if-eqz v6, :cond_2

    .line 139
    .line 140
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-interface {v8, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 145
    .line 146
    .line 147
    :cond_2
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadAuthToken(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    if-eqz v6, :cond_3

    .line 152
    .line 153
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-interface {v8, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 158
    .line 159
    .line 160
    :cond_3
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadVisibilities(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    if-eqz v6, :cond_4

    .line 165
    .line 166
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-interface {v8, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadPreviousName(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    if-eqz v6, :cond_5

    .line 178
    .line 179
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    invoke-interface {v8, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 184
    .line 185
    .line 186
    :cond_5
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadUidGrants(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    if-eqz v6, :cond_6

    .line 191
    .line 192
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->e(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    .line 198
    .line 199
    :cond_6
    iget-object v6, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 200
    .line 201
    iget v8, v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;->b:I

    .line 202
    .line 203
    invoke-virtual {v6, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 207
    .line 208
    .line 209
    new-array v1, v4, [Ljava/io/Closeable;

    .line 210
    .line 211
    aput-object v7, v1, v5

    .line 212
    .line 213
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_7
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    .line 219
    .line 220
    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .line 221
    .line 222
    .line 223
    throw v2

    .line 224
    :cond_8
    new-instance v2, Ljava/io/IOException;

    .line 225
    .line 226
    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .line 227
    .line 228
    .line 229
    throw v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    :catchall_0
    move-exception v0

    .line 231
    move-object v6, v7

    .line 232
    goto :goto_3

    .line 233
    :catch_0
    move-exception v2

    .line 234
    move-object v6, v7

    .line 235
    goto :goto_2

    .line 236
    :catch_1
    move-object v6, v7

    .line 237
    goto :goto_4

    .line 238
    :catchall_1
    move-exception v0

    .line 239
    goto :goto_3

    .line 240
    :catch_2
    move-exception v2

    .line 241
    :goto_2
    :try_start_3
    const-string v7, "MAccountManagerService"

    .line 242
    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v9, "Error reading accounts for user "

    .line 249
    .line 250
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    iget v1, v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;->b:I

    .line 254
    .line 255
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-static {v7, v1}, Lcom/xinzhu/overmind/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 269
    .line 270
    .line 271
    new-array v1, v4, [Ljava/io/Closeable;

    .line 272
    .line 273
    aput-object v6, v1, v5

    .line 274
    .line 275
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :goto_3
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 281
    .line 282
    .line 283
    new-array v1, v4, [Ljava/io/Closeable;

    .line 284
    .line 285
    aput-object v6, v1, v5

    .line 286
    .line 287
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 288
    .line 289
    .line 290
    throw v0

    .line 291
    :catch_3
    :goto_4
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 292
    .line 293
    .line 294
    new-array v1, v4, [Ljava/io/Closeable;

    .line 295
    .line 296
    aput-object v6, v1, v5

    .line 297
    .line 298
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :cond_9
    return-void
.end method

.method private loadAuthToken(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "authtoken.db"

    .line 12
    .line 13
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_AUTH_TOKEN_MAGIC:[B

    .line 17
    .line 18
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadMap(Ljava/io/File;[B)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private loadCompatAccounts()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserManager()Lma/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/b;->c()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_4

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/xinzhu/overmind/server/accounts/b$a;

    .line 24
    .line 25
    iget v3, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->a:I

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Lma/i;->c(I)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    .line 35
    .line 36
    iget-object v4, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->b:Landroid/accounts/Account;

    .line 37
    .line 38
    invoke-direct {v3, v4}, Lcom/xinzhu/overmind/server/accounts/MindAccount;-><init>(Landroid/accounts/Account;)V

    .line 39
    .line 40
    .line 41
    iget-object v4, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->d:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v4, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->c:Ljava/lang/String;

    .line 44
    .line 45
    iget-wide v4, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->e:J

    .line 46
    .line 47
    iput-wide v4, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->d:J

    .line 48
    .line 49
    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 50
    .line 51
    iget v5, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->a:I

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 58
    .line 59
    if-nez v4, :cond_1

    .line 60
    .line 61
    new-instance v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 62
    .line 63
    iget v5, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->a:I

    .line 64
    .line 65
    invoke-direct {v4, v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;-><init>(I)V

    .line 66
    .line 67
    .line 68
    iget-object v5, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 69
    .line 70
    iget v6, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->a:I

    .line 71
    .line 72
    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v5, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Landroid/accounts/Account;

    .line 76
    .line 77
    invoke-direct {p0, v4, v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->insertAccountIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 78
    .line 79
    .line 80
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    iget-object v6, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Landroid/accounts/Account;

    .line 85
    .line 86
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    new-instance v5, Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-object v6, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->g:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_2

    .line 105
    .line 106
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    check-cast v7, Landroid/util/Pair;

    .line 111
    .line 112
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v8, Ljava/lang/String;

    .line 115
    .line 116
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v7, Ljava/lang/String;

    .line 119
    .line 120
    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    iget-object v7, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Landroid/accounts/Account;

    .line 129
    .line 130
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    new-instance v5, Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-object v6, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->f:Ljava/util/List;

    .line 139
    .line 140
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_3

    .line 149
    .line 150
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    check-cast v7, Landroid/util/Pair;

    .line 155
    .line 156
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v8, Ljava/lang/String;

    .line 159
    .line 160
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v7, Ljava/lang/String;

    .line 163
    .line 164
    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_3
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    iget-object v7, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Landroid/accounts/Account;

    .line 173
    .line 174
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    iget-object v3, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Landroid/accounts/Account;

    .line 182
    .line 183
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    .line 184
    .line 185
    iget-object v2, v2, Lcom/xinzhu/overmind/server/accounts/b$a;->c:Ljava/lang/String;

    .line 186
    .line 187
    invoke-direct {v5, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_4
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/b;->d()Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_7

    .line 208
    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    check-cast v1, Lcom/xinzhu/overmind/server/accounts/b$b;

    .line 214
    .line 215
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 216
    .line 217
    iget v3, v1, Lcom/xinzhu/overmind/server/accounts/b$b;->a:I

    .line 218
    .line 219
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 224
    .line 225
    if-eqz v2, :cond_5

    .line 226
    .line 227
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    iget-object v4, v1, Lcom/xinzhu/overmind/server/accounts/b$b;->b:Landroid/accounts/Account;

    .line 232
    .line 233
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    if-eqz v3, :cond_5

    .line 238
    .line 239
    new-instance v3, Ljava/util/HashMap;

    .line 240
    .line 241
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 242
    .line 243
    .line 244
    iget-object v4, v1, Lcom/xinzhu/overmind/server/accounts/b$b;->c:Ljava/util/List;

    .line 245
    .line 246
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-eqz v5, :cond_6

    .line 255
    .line 256
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    check-cast v5, Landroid/util/Pair;

    .line 261
    .line 262
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v6, Ljava/lang/String;

    .line 265
    .line 266
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v5, Ljava/lang/Integer;

    .line 269
    .line 270
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_6
    invoke-static {v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    iget-object v1, v1, Lcom/xinzhu/overmind/server/accounts/b$b;->b:Landroid/accounts/Account;

    .line 279
    .line 280
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_7
    return-void
.end method

.method private loadList(Ljava/io/File;[B)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "[B)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    array-length v3, p2

    .line 12
    new-array v3, v3, [B

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 15
    .line 16
    .line 17
    invoke-static {v3, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 18
    .line 19
    .line 20
    move-result p2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/l;->w(Ljava/io/InputStream;)[B

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    array-length v2, p2

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, p2, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    .line 38
    .line 39
    const-class p2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p2

    .line 56
    :try_start_2
    const-string v2, "MAccountManagerService"

    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v4, "Error reading data file "

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v2, p1}, Lcom/xinzhu/overmind/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :catch_1
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 87
    .line 88
    .line 89
    return-object v1
.end method

.method private loadMap(Ljava/io/File;[B)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "[B)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    array-length v3, p2

    .line 12
    new-array v3, v3, [B

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 15
    .line 16
    .line 17
    invoke-static {v3, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 18
    .line 19
    .line 20
    move-result p2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/l;->w(Ljava/io/InputStream;)[B

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    array-length v2, p2

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, p2, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    .line 38
    .line 39
    const-class p2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p2

    .line 56
    :try_start_2
    const-string v2, "MAccountManagerService"

    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v4, "Error reading data file "

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v2, p1}, Lcom/xinzhu/overmind/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :catch_1
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 87
    .line 88
    .line 89
    return-object v1
.end method

.method private loadPreviousName(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "previous.db"

    .line 12
    .line 13
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_PREVIOUS_NAME_MAGIC:[B

    .line 17
    .line 18
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadMap(Ljava/io/File;[B)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private loadUidGrants(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$UidGrant;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "grant.db"

    .line 12
    .line 13
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_UID_GRANT_MAGIC:[B

    .line 17
    .line 18
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadList(Ljava/io/File;[B)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private loadUserData(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "userdata.db"

    .line 12
    .line 13
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_USER_DATA_MAGIC:[B

    .line 17
    .line 18
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadMap(Ljava/io/File;[B)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private loadVisibilities(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "visibility.db"

    .line 12
    .line 13
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_VISIBILITY_MAGIC:[B

    .line 17
    .line 18
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadMap(Ljava/io/File;[B)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ge v0, v2, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    array-length v0, p1

    .line 8
    if-le v0, v2, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    aget-object p1, p1, v1

    .line 12
    .line 13
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 p2, 0x4

    .line 32
    if-ne p1, p2, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_2
    return v1
.end method

.method private newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    if-eqz p6, :cond_0

    .line 13
    .line 14
    const/high16 p6, 0x10000000

    .line 15
    .line 16
    invoke-virtual {v0, p6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance p6, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, p5, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v1, v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p2, ""

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    const-string p2, "account"

    .line 49
    .line 50
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const-string p1, "authTokenType"

    .line 54
    .line 55
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    const-string p1, "response"

    .line 59
    .line 60
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    const-string p1, "uid"

    .line 64
    .line 65
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    return-object v0
.end method

.method private newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .locals 7

    .line 1
    new-instance v6, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p3

    .line 7
    move-object v4, p2

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$h;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v6}, Ll8/b;->b(Ljava/lang/Object;)Ll8/b;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    iget-object p4, p4, Ll8/b;->a:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v4, p4

    .line 19
    check-cast v4, Landroid/accounts/AccountAuthenticatorResponse;

    .line 20
    .line 21
    const-string v5, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move-object v2, p2

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method private notifyPackage(Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const/high16 p1, 0x40000000    # 2.0f

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {p1, v0, v1, p2}, Lcom/xinzhu/overmind/server/am/f;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lna/c;->k(Landroid/content/Intent;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "MAccountManagerService"

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/Exception;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "the result is unexpectedly null"

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Lcom/xinzhu/overmind/utils/q;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, " calling onResult() on response "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v0, v2}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
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
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    const-string p2, "failure while notifying response"

    .line 65
    .line 66
    invoke-static {v0, p2, p1}, Lcom/xinzhu/overmind/utils/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_0
    return-void
.end method

.method private packageExistsForUser(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 p2, -0x1

    .line 11
    if-eq p1, p2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    return v1
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .locals 6

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, "Access to "

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    const-string v5, "MAccountManagerService"

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-static {v5, v4}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, " granted calling uid is system"

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v5, p1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    return v2

    .line 45
    :cond_1
    const-string v0, " granted calling uid "

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0, v1, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 52
    .line 53
    .line 54
    move-result p4

    .line 55
    if-eqz p4, :cond_3

    .line 56
    .line 57
    invoke-static {v5, v4}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p1, " manages the account"

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v5, p1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :cond_2
    return v2

    .line 93
    :cond_3
    if-eqz p1, :cond_5

    .line 94
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_5

    .line 100
    .line 101
    invoke-static {v5, v4}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_4

    .line 106
    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p1, " user granted access"

    .line 125
    .line 126
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {v5, p1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :cond_4
    return v2

    .line 137
    :cond_5
    invoke-static {v5, v4}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-eqz p2, :cond_6

    .line 142
    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string p1, " not granted for uid "

    .line 155
    .line 156
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {v5, p1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    :cond_6
    const/4 p1, 0x0

    .line 170
    return p1
.end method

.method private purgeOldGrants(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->n()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, v2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 41
    :goto_1
    if-eqz v3, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v3, "MAccountManagerService"

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v5, "deleting grants for UID "

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v5, " because its package is no longer installed"

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v3, v4}, Lcom/xinzhu/overmind/utils/q;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->m(I)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveUidGrantsLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p1
.end method

.method private purgeOldGrantsAll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 20
    .line 21
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->purgeOldGrants(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method

.method private purgeUserData(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method private readPasswordInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    .line 27
    .line 28
    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, v1, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Landroid/accounts/Account;

    .line 31
    .line 32
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v3, v1, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b:Landroid/accounts/Account;

    .line 43
    .line 44
    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/accounts/MindAccount;->b()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    monitor-exit v0

    .line 57
    return-object p1

    .line 58
    :cond_1
    monitor-exit v0

    .line 59
    const/4 p1, 0x0

    .line 60
    return-object p1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p1
.end method

.method private readPreviousNameInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountPreviousNameLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-object v1

    .line 39
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/String;

    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return-object p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1
.end method

.method private registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 6

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 4
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v5, v3

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeAccountFromCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, [Landroid/accounts/Account;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    array-length v2, v0

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_1

    .line 21
    .line 22
    aget-object v4, v0, v3

    .line 23
    .line 24
    invoke-virtual {v4, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    .line 43
    .line 44
    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    new-array v0, v0, [Landroid/accounts/Account;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, [Landroid/accounts/Account;

    .line 61
    .line 62
    iget-object v1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    .line 63
    .line 64
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountUserDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountPreviousNameLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountVisibilitiesLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method private removeAccountInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;I)Z
    .locals 5

    .line 1
    iget-object p3, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p3

    .line 4
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, p2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->removeAccountFromCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x1

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/util/Map$Entry;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eq v4, v3, :cond_1

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/4 v4, 0x2

    .line 69
    if-ne v3, v4, :cond_0

    .line 70
    .line 71
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/String;

    .line 76
    .line 77
    invoke-direct {p0, v2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-direct {p0, p2, v1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    monitor-enter v0

    .line 118
    :try_start_1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    if-eqz p3, :cond_5

    .line 135
    .line 136
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    check-cast p3, Landroid/util/Pair;

    .line 141
    .line 142
    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v1, Landroid/util/Pair;

    .line 145
    .line 146
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 147
    .line 148
    invoke-virtual {p2, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_4

    .line 153
    .line 154
    const-string v1, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 155
    .line 156
    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v2, Landroid/util/Pair;

    .line 159
    .line 160
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_4

    .line 167
    .line 168
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast p3, Ljava/lang/Integer;

    .line 171
    .line 172
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mHandler:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

    .line 177
    .line 178
    new-instance v2, Lcom/xinzhu/overmind/server/accounts/f;

    .line 179
    .line 180
    invoke-direct {v2, p0, p2, p3}, Lcom/xinzhu/overmind/server/accounts/f;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/Account;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_5
    monitor-exit v0

    .line 188
    return v3

    .line 189
    :catchall_0
    move-exception p1

    .line 190
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    throw p1

    .line 192
    :catchall_1
    move-exception p1

    .line 193
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    throw p1
.end method

.method private removeVisibilityValuesForPackage(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v1, :cond_3

    .line 20
    .line 21
    iget-object v4, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 28
    .line 29
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-virtual {v5, p1, v2, v6}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/4 v6, -0x1

    .line 42
    if-ne v6, v5, :cond_2

    .line 43
    .line 44
    iget-object v5, v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_1

    .line 64
    .line 65
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    check-cast v7, Landroid/accounts/Account;

    .line 70
    .line 71
    invoke-direct {p0, v7, v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-direct {p0, v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountVisibilitiesLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 80
    .line 81
    .line 82
    monitor-exit v5

    .line 83
    goto :goto_2

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    throw p1

    .line 87
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    monitor-exit v0

    .line 91
    return-void

    .line 92
    :catchall_1
    move-exception p1

    .line 93
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    throw p1
.end method

.method private renameAccountInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getSigninRequiredNotificationId(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-direct {v1, v2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/util/Pair;

    .line 45
    .line 46
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v3, Landroid/util/Pair;

    .line 49
    .line 50
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-virtual {p2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 67
    .line 68
    new-instance v3, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-direct {v3, v4}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v2, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    iget-object v1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter v1

    .line 85
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v2, Landroid/accounts/Account;

    .line 90
    .line 91
    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 92
    .line 93
    invoke-direct {v2, p3, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance p3, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    .line 97
    .line 98
    invoke-direct {p3, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccount;-><init>(Landroid/accounts/Account;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    .line 110
    .line 111
    if-eqz v3, :cond_2

    .line 112
    .line 113
    const-string p1, "MAccountManagerService"

    .line 114
    .line 115
    const-string p2, "renameAccount failed - account with new name already exists"

    .line 116
    .line 117
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    monitor-exit v1

    .line 121
    const/4 p1, 0x0

    .line 122
    return-object p1

    .line 123
    :cond_2
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    .line 132
    .line 133
    if-eqz v3, :cond_3

    .line 134
    .line 135
    iget-object v3, v3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->c:Ljava/lang/String;

    .line 136
    .line 137
    iput-object v3, p3, Lcom/xinzhu/overmind/server/accounts/MindAccount;->c:Ljava/lang/String;

    .line 138
    .line 139
    :cond_3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-interface {v3, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, p1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->insertAccountIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Ljava/util/Map;

    .line 169
    .line 170
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Ljava/util/Map;

    .line 179
    .line 180
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    check-cast v4, Ljava/util/Map;

    .line 189
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->removeAccountFromCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)V

    .line 191
    .line 192
    .line 193
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-interface {v5, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountUserDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 201
    .line 202
    .line 203
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 211
    .line 212
    .line 213
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-interface {v2, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountVisibilitiesLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 221
    .line 222
    .line 223
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 228
    .line 229
    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 230
    .line 231
    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountPreviousNameLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 238
    .line 239
    .line 240
    invoke-direct {p0, p3, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 241
    .line 242
    .line 243
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 248
    .line 249
    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_4

    .line 259
    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Ljava/lang/String;

    .line 265
    .line 266
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    invoke-direct {p0, p2, v2, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 271
    .line 272
    .line 273
    goto :goto_1

    .line 274
    :cond_4
    monitor-exit v1

    .line 275
    return-object p3

    .line 276
    :catchall_0
    move-exception p1

    .line 277
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    throw p1

    .line 279
    :catchall_1
    move-exception p1

    .line 280
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 281
    throw p1
.end method

.method private resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;
    .locals 5

    .line 1
    const-string v0, "packageName cannot be null"

    .line 2
    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v2, p2, v4, v3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    .line 20
    .line 21
    .line 22
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x3e8

    .line 27
    .line 28
    invoke-static {v2, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->B(II)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_0
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-direct {p0, v0, v2, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->checkPackageSignature(Ljava/lang/String;II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v2, 0x2

    .line 51
    if-ne v0, v2, :cond_1

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_2
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isPreOApplication(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    if-nez p2, :cond_4

    .line 76
    .line 77
    iget-object p2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-direct {p0, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->accountTypeManagesContacts(Ljava/lang/String;I)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_3

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    const-string p2, "android:accounts:key_legacy_not_visible"

    .line 91
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_6

    .line 97
    .line 98
    const/4 v2, 0x4

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    :goto_0
    const-string p2, "android:accounts:key_legacy_visible"

    .line 101
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_5

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    move v2, p1

    .line 110
    :cond_6
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method

.method private revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->l(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->F(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p0, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 33
    .line 34
    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mHandler:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

    .line 55
    .line 56
    new-instance v2, Lcom/xinzhu/overmind/server/accounts/h;

    .line 57
    .line 58
    invoke-direct {v2, v0, p1, p3}, Lcom/xinzhu/overmind/server/accounts/h;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p1

    .line 69
    :cond_2
    :goto_1
    const-string p1, "MAccountManagerService"

    .line 70
    .line 71
    const-string p2, "revokeAppPermission: called with invalid arguments"

    .line 72
    .line 73
    new-instance p3, Ljava/lang/Exception;

    .line 74
    .line 75
    invoke-direct {p3}, Ljava/lang/Exception;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, p2, p3}, Lcom/xinzhu/overmind/utils/q;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private saveAccountAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "authtoken.db"

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_AUTH_TOKEN_MAGIC:[B

    .line 17
    .line 18
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, v0, v1, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveMap(Ljava/io/File;[BLjava/util/Map;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private saveAccountDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v2}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "accounts.db"

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroid/util/AtomicFile;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_DATA_MAGIC:[B

    .line 52
    .line 53
    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v4}, Lcom/xinzhu/overmind/utils/l;->z(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 63
    .line 64
    .line 65
    new-array p1, v1, [Ljava/io/Closeable;

    .line 66
    .line 67
    aput-object v4, p1, v3

    .line 68
    .line 69
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 81
    .line 82
    .line 83
    new-array p1, v1, [Ljava/io/Closeable;

    .line 84
    .line 85
    aput-object v4, p1, v3

    .line 86
    .line 87
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void

    .line 91
    :catchall_1
    move-exception p1

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 93
    .line 94
    .line 95
    new-array v0, v1, [Ljava/io/Closeable;

    .line 96
    .line 97
    aput-object v4, v0, v3

    .line 98
    .line 99
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

.method private saveAccountPreviousNameLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "previous.db"

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_PREVIOUS_NAME_MAGIC:[B

    .line 17
    .line 18
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->c(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, v0, v1, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveMap(Ljava/io/File;[BLjava/util/Map;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private saveAccountUserDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "userdata.db"

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_USER_DATA_MAGIC:[B

    .line 17
    .line 18
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, v0, v1, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveMap(Ljava/io/File;[BLjava/util/Map;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private saveAccountVisibilitiesLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "visibility.db"

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_VISIBILITY_MAGIC:[B

    .line 17
    .line 18
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->d(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, v0, v1, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveMap(Ljava/io/File;[BLjava/util/Map;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private saveAuthTokenToDatabase(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getSigninRequiredNotificationId(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-direct {v1, v2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1

    .line 34
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method private saveCachedToken(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 11

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-eqz p5, :cond_1

    .line 4
    .line 5
    if-eqz p3, :cond_1

    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getSigninRequiredNotificationId(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->F(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v9, p0

    .line 23
    invoke-direct {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 24
    .line 25
    .line 26
    move-object v0, p1

    .line 27
    iget-object v10, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v10

    .line 30
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->i(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Lcom/xinzhu/overmind/server/accounts/i;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    move-object v2, p2

    .line 35
    move-object/from16 v3, p6

    .line 36
    .line 37
    move-object/from16 v4, p5

    .line 38
    .line 39
    move-object v5, p3

    .line 40
    move-object v6, p4

    .line 41
    move-wide/from16 v7, p7

    .line 42
    .line 43
    invoke-virtual/range {v1 .. v8}, Lcom/xinzhu/overmind/server/accounts/i;->b(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V

    .line 44
    .line 45
    .line 46
    monitor-exit v10

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw v0

    .line 51
    :cond_1
    :goto_0
    move-object v9, p0

    .line 52
    return-void
.end method

.method private saveList(Ljava/io/File;[BLjava/util/List;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/util/AtomicFile;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v3}, Lcom/xinzhu/overmind/utils/l;->z(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 33
    .line 34
    .line 35
    new-array p1, p1, [Ljava/io/Closeable;

    .line 36
    .line 37
    aput-object v3, p1, v2

    .line 38
    .line 39
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p2

    .line 44
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    .line 52
    .line 53
    new-array p1, p1, [Ljava/io/Closeable;

    .line 54
    .line 55
    aput-object v3, p1, v2

    .line 56
    .line 57
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void

    .line 61
    :catchall_1
    move-exception p2

    .line 62
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 63
    .line 64
    .line 65
    new-array p1, p1, [Ljava/io/Closeable;

    .line 66
    .line 67
    aput-object v3, p1, v2

    .line 68
    .line 69
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 70
    .line 71
    .line 72
    throw p2
.end method

.method private saveMap(Ljava/io/File;[BLjava/util/Map;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/util/AtomicFile;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v3}, Lcom/xinzhu/overmind/utils/l;->z(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 33
    .line 34
    .line 35
    new-array p1, p1, [Ljava/io/Closeable;

    .line 36
    .line 37
    aput-object v3, p1, v2

    .line 38
    .line 39
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p2

    .line 44
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    .line 52
    .line 53
    new-array p1, p1, [Ljava/io/Closeable;

    .line 54
    .line 55
    aput-object v3, p1, v2

    .line 56
    .line 57
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void

    .line 61
    :catchall_1
    move-exception p2

    .line 62
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 63
    .line 64
    .line 65
    new-array p1, p1, [Ljava/io/Closeable;

    .line 66
    .line 67
    aput-object v3, p1, v2

    .line 68
    .line 69
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 70
    .line 71
    .line 72
    throw p2
.end method

.method private saveUidGrantsLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Lcom/xinzhu/overmind/a;->b(I)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "grant.db"

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_FILE_UID_GRANT_MAGIC:[B

    .line 17
    .line 18
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->e(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, v0, v1, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveList(Ljava/io/File;[BLjava/util/List;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.accounts.action.ACCOUNT_REMOVED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    iget-object p2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "authAccount"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string p2, "accountType"

    .line 19
    .line 20
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {v0, p2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, v0, p2, p3}, Lcom/xinzhu/overmind/server/am/f;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lna/c;->k(Landroid/content/Intent;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method private sendAccountsChangedBroadcast(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "the accounts changed, sending broadcast of "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "MAccountManagerService"

    .line 25
    .line 26
    invoke-static {v2, v0}, Lcom/xinzhu/overmind/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v1, v2, p1}, Lcom/xinzhu/overmind/server/am/f;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lna/c;->k(Landroid/content/Intent;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method private sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    const/4 p2, 0x2

    .line 7
    const-string p3, "MAccountManagerService"

    .line 8
    .line 9
    invoke-static {p3, p2}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const-string p2, "failure while notifying response"

    .line 16
    .line 17
    invoke-static {p3, p2, p1}, Lcom/xinzhu/overmind/utils/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method private sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x3

    .line 36
    if-eq v1, v2, :cond_0

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v2, 0x4

    .line 49
    if-eq v1, v2, :cond_0

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {p0, v0, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method

.method private sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    const/4 p2, 0x2

    .line 7
    const-string v0, "MAccountManagerService"

    .line 8
    .line 9
    invoke-static {v0, p2}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const-string p2, "failure while notifying response"

    .line 16
    .line 17
    invoke-static {v0, p2, p1}, Lcom/xinzhu/overmind/utils/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method private setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Z
    .locals 5

    .line 1
    iget-object v0, p5, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-direct {p0, p1, p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v2

    .line 4
    invoke-direct {p0, p1, p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    monitor-exit v0

    return v1

    .line 7
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-direct {p0, p1, p2, p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    move-result-object v3

    .line 9
    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-direct {p0, p1, p2, p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->shouldNotifyPackageOnAccountRemoval(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 14
    invoke-static {p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    monitor-exit v0

    return v1

    .line 16
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 18
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->updateAccountVisibilityLocked(Landroid/accounts/Account;Ljava/lang/String;ILcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 19
    monitor-exit v0

    return v1

    :cond_5
    if-eqz p4, :cond_9

    .line 20
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    .line 21
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 23
    invoke-direct {p0, p1, p2, p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 24
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isVisible(I)Z

    move-result v1

    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isVisible(I)Z

    move-result v2

    if-eq v1, v2, :cond_6

    .line 25
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-direct {p0, p4, p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    goto :goto_1

    .line 26
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 27
    invoke-static {p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p4

    invoke-direct {p0, p1, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_2

    .line 28
    :cond_8
    invoke-static {p5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 29
    :cond_9
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setPasswordInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p4, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter p4

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iput-object p3, v0, Lcom/xinzhu/overmind/server/accounts/MindAccount;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->i(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Lcom/xinzhu/overmind/server/accounts/i;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p3, p2}, Lcom/xinzhu/overmind/server/accounts/i;->c(Landroid/accounts/Account;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p2, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    monitor-exit p4

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p1
.end method

.method private setUserdataInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->writeUserDataIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p1
.end method

.method private shouldNotifyPackageOnAccountRemoval(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq p1, v2, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 18
    .line 19
    const-string v2, "android.accounts.action.ACCOUNT_REMOVED"

    .line 20
    .line 21
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    invoke-virtual {p2, p1, v0, v2, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->queryIntentBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-lez p1, :cond_1

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    :cond_1
    return v0
.end method

.method private showCantAddAccount(II)V
    .locals 0

    return-void
.end method

.method private startChooseAccountActivityWithAccounts(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "accounts"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    new-instance p2, Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;-><init>(Landroid/accounts/IAccountManagerResponse;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "accountManagerResponse"

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string p1, "androidPackageName"

    .line 28
    .line 29
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static synthetic u(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->lambda$revokeAppPermission$2(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V

    return-void
.end method

.method private unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    .locals 7

    .line 1
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :try_start_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 4
    invoke-static {p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->g(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 5
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 6
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 8
    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempt to unregister wrong receiver"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateAccountVisibilityLocked(Landroid/accounts/Account;Ljava/lang/String;ILcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Z
    .locals 1

    .line 1
    invoke-static {p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method private updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccountsForCaller()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->k(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/xinzhu/overmind/server/accounts/MindAccount;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iput-wide v2, p1, Lcom/xinzhu/overmind/server/accounts/MindAccount;->d:J

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_0
    monitor-exit v1

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method


# virtual methods
.method public accountAuthenticated(Landroid/accounts/Account;)Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    const-string v2, "MAccountManagerService"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    new-array v4, v3, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object p1, v4, v6

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    aput-object v7, v4, v5

    .line 27
    .line 28
    const-string v7, "accountAuthenticated( account: %s, callerUid: %s)"

    .line 29
    .line 30
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    const-string v2, "account cannot be null"

    .line 38
    .line 39
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 43
    .line 44
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-direct {p0, v0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccounts(II)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 59
    .line 60
    invoke-direct {p0, v0, v2, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    .line 75
    .line 76
    .line 77
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    return p1

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_2
    :goto_0
    return v6

    .line 88
    :cond_3
    new-array v0, v3, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    aput-object v1, v0, v6

    .line 95
    .line 96
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 97
    .line 98
    aput-object p1, v0, v5

    .line 99
    .line 100
    const-string p1, "uid %s cannot notify authentication for accounts of type: %s"

    .line 101
    .line 102
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance v0, Ljava/lang/SecurityException;

    .line 107
    .line 108
    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 19

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    const-string v2, "MAccountManagerService"

    .line 9
    .line 10
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "addAccount: accountType "

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, ", response "

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, ", authTokenType "

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-object/from16 v11, p3

    .line 43
    .line 44
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, ", requiredFeatures "

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, ", expectActivityLaunch "

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move/from16 v6, p5

    .line 65
    .line 66
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, ", caller\'s uid "

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget v3, v3, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v3, ", pid "

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v3, " helperuid "

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget v3, v3, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v3, " realuid "

    .line 110
    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUid()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v3, " "

    .line 122
    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v3, v15, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUid()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_0
    move-object/from16 v11, p3

    .line 156
    .line 157
    move/from16 v6, p5

    .line 158
    .line 159
    :goto_0
    if-eqz v0, :cond_5

    .line 160
    .line 161
    if-eqz v14, :cond_4

    .line 162
    .line 163
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iget v2, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 168
    .line 169
    invoke-static {v2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-direct {v15, v3, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccounts(II)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-nez v4, :cond_1

    .line 178
    .line 179
    const/16 v1, 0x64

    .line 180
    .line 181
    :try_start_0
    const-string v2, "User is not allowed to add an account!"

    .line 182
    .line 183
    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    .line 186
    :catch_0
    invoke-direct {v15, v1, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_1
    invoke-direct {v15, v3, v14, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-nez v4, :cond_2

    .line 195
    .line 196
    const/16 v1, 0x65

    .line 197
    .line 198
    :try_start_1
    const-string v2, "User cannot modify accounts of this type (policy)."

    .line 199
    .line 200
    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    .line 202
    .line 203
    :catch_1
    invoke-direct {v15, v1, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_2
    iget v3, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 208
    .line 209
    if-nez p6, :cond_3

    .line 210
    .line 211
    new-instance v4, Landroid/os/Bundle;

    .line 212
    .line 213
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 214
    .line 215
    .line 216
    move-object v13, v4

    .line 217
    goto :goto_1

    .line 218
    :cond_3
    move-object/from16 v13, p6

    .line 219
    .line 220
    :goto_1
    const-string v4, "callerUid"

    .line 221
    .line 222
    invoke-virtual {v13, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 223
    .line 224
    .line 225
    const-string v2, "callerPid"

    .line 226
    .line 227
    invoke-virtual {v13, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 228
    .line 229
    .line 230
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 231
    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 233
    .line 234
    .line 235
    move-result-wide v16

    .line 236
    :try_start_2
    invoke-virtual {v15, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    new-instance v18, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$o;

    .line 241
    .line 242
    const/4 v7, 0x1

    .line 243
    const/4 v8, 0x0

    .line 244
    const/4 v9, 0x0

    .line 245
    const/4 v10, 0x1

    .line 246
    move-object/from16 v1, v18

    .line 247
    .line 248
    move-object/from16 v2, p0

    .line 249
    .line 250
    move-object/from16 v4, p1

    .line 251
    .line 252
    move-object/from16 v5, p2

    .line 253
    .line 254
    move/from16 v6, p5

    .line 255
    .line 256
    move-object/from16 v11, p3

    .line 257
    .line 258
    move-object/from16 v12, p4

    .line 259
    .line 260
    move-object/from16 v14, p2

    .line 261
    .line 262
    invoke-direct/range {v1 .. v14}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$o;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual/range {v18 .. v18}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    .line 267
    .line 268
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :catchall_0
    move-exception v0

    .line 273
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    .line 275
    .line 276
    throw v0

    .line 277
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 278
    .line 279
    const-string v1, "accountType is null"

    .line 280
    .line 281
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw v0

    .line 285
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 286
    .line 287
    const-string v1, "response is null"

    .line 288
    .line 289
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw v0
.end method

.method public addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 19

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    move/from16 v1, p7

    .line 8
    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v3, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 14
    .line 15
    const-string v4, "MAccountManagerService"

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    invoke-static {v4, v5}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v7, "addAccount: accountType "

    .line 30
    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v7, ", response "

    .line 38
    .line 39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v7, ", authTokenType "

    .line 46
    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-object/from16 v11, p3

    .line 51
    .line 52
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v7, ", requiredFeatures "

    .line 56
    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v7, ", expectActivityLaunch "

    .line 68
    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move/from16 v7, p5

    .line 73
    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v8, ", caller\'s uid "

    .line 78
    .line 79
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    iget v8, v8, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 87
    .line 88
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v8, ", pid "

    .line 92
    .line 93
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v8, ", for user id "

    .line 104
    .line 105
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-static {v4, v6}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    move-object/from16 v11, p3

    .line 120
    .line 121
    move/from16 v7, p5

    .line 122
    .line 123
    :goto_0
    const-string v4, "response cannot be null"

    .line 124
    .line 125
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    const-string v4, "accountType cannot be null"

    .line 129
    .line 130
    invoke-static {v14, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    invoke-direct {v15, v3, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isCrossUser(II)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-nez v4, :cond_4

    .line 138
    .line 139
    invoke-direct {v15, v1, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccounts(II)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-nez v4, :cond_1

    .line 144
    .line 145
    const/16 v2, 0x64

    .line 146
    .line 147
    :try_start_0
    const-string v3, "User is not allowed to add an account!"

    .line 148
    .line 149
    invoke-interface {v0, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    .line 152
    :catch_0
    invoke-direct {v15, v2, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_1
    invoke-direct {v15, v1, v14, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-nez v3, :cond_2

    .line 161
    .line 162
    const/16 v2, 0x65

    .line 163
    .line 164
    :try_start_1
    const-string v3, "User cannot modify accounts of this type (policy)."

    .line 165
    .line 166
    invoke-interface {v0, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    .line 168
    .line 169
    :catch_1
    invoke-direct {v15, v2, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_2
    iget v3, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 174
    .line 175
    iget v2, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 176
    .line 177
    if-nez p6, :cond_3

    .line 178
    .line 179
    new-instance v4, Landroid/os/Bundle;

    .line 180
    .line 181
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 182
    .line 183
    .line 184
    move-object v13, v4

    .line 185
    goto :goto_1

    .line 186
    :cond_3
    move-object/from16 v13, p6

    .line 187
    .line 188
    :goto_1
    const-string v4, "callerUid"

    .line 189
    .line 190
    invoke-virtual {v13, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    const-string v2, "callerPid"

    .line 194
    .line 195
    invoke-virtual {v13, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 199
    .line 200
    .line 201
    move-result-wide v16

    .line 202
    :try_start_2
    invoke-virtual {v15, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    new-instance v18, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$p;

    .line 207
    .line 208
    const/4 v8, 0x1

    .line 209
    const/4 v9, 0x0

    .line 210
    const/4 v10, 0x0

    .line 211
    const/4 v12, 0x1

    .line 212
    move-object/from16 v1, v18

    .line 213
    .line 214
    move-object/from16 v2, p0

    .line 215
    .line 216
    move-object/from16 v4, p1

    .line 217
    .line 218
    move-object/from16 v5, p2

    .line 219
    .line 220
    move/from16 v6, p5

    .line 221
    .line 222
    move v7, v8

    .line 223
    move-object v8, v9

    .line 224
    move v9, v10

    .line 225
    move v10, v12

    .line 226
    move-object/from16 v11, p3

    .line 227
    .line 228
    move-object/from16 v12, p4

    .line 229
    .line 230
    move-object/from16 v14, p2

    .line 231
    .line 232
    invoke-direct/range {v1 .. v14}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$p;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {v18 .. v18}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    .line 237
    .line 238
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :catchall_0
    move-exception v0

    .line 243
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    .line 245
    .line 246
    throw v0

    .line 247
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    .line 248
    .line 249
    new-array v3, v5, [Ljava/lang/Object;

    .line 250
    .line 251
    iget v2, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 252
    .line 253
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    const/4 v4, 0x0

    .line 258
    aput-object v2, v3, v4

    .line 259
    .line 260
    const/4 v2, 0x1

    .line 261
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    aput-object v1, v3, v2

    .line 266
    .line 267
    const-string v1, "User %s trying to add account for %s"

    .line 268
    .line 269
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v0
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z
    .locals 10

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v6, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 8
    .line 9
    const-string v1, "MAccountManagerService"

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v4, "addAccountExplicitly: "

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v4, ", caller\'s uid "

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v4, ", pid "

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v1, v3}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_0
    const-string v1, "account cannot be null"

    .line 59
    .line 60
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {p0, v1, v6, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 72
    .line 73
    .line 74
    move-result-wide v8

    .line 75
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    move-object v1, p0

    .line 80
    move-object v3, p1

    .line 81
    move-object v4, p2

    .line 82
    move-object v5, p3

    .line 83
    move-object v7, p4

    .line 84
    invoke-direct/range {v1 .. v7}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->addAccountInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;)Z

    .line 85
    .line 86
    .line 87
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    return p1

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_1
    new-array p2, v2, [Ljava/lang/Object;

    .line 98
    .line 99
    const/4 p3, 0x0

    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p4

    .line 104
    aput-object p4, p2, p3

    .line 105
    .line 106
    const/4 p3, 0x1

    .line 107
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 108
    .line 109
    aput-object p1, p2, p3

    .line 110
    .line 111
    const-string p1, "uid %s cannot explicitly add accounts of type: %s"

    .line 112
    .line 113
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance p2, Ljava/lang/SecurityException;

    .line 118
    .line 119
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p2
.end method

.method public addOnAppPermissionChangeListener(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string p2, "Not implemented."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public addSharedAccountsFromParentUser(IILjava/lang/String;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string p2, "Not implemented."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    const-string v2, "MAccountManagerService"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "clearPassword: "

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v5, ", caller\'s uid "

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v5, ", pid "

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    const-string v2, "account cannot be null"

    .line 57
    .line 58
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 62
    .line 63
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-direct {p0, v0, p1, v4, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->setPasswordInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    aput-object v1, v0, v2

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 103
    .line 104
    aput-object p1, v0, v1

    .line 105
    .line 106
    const-string p1, "uid %s cannot clear passwords for accounts of type: %s"

    .line 107
    .line 108
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance v0, Ljava/lang/SecurityException;

    .line 113
    .line 114
    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .locals 17

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v11, p2

    .line 6
    .line 7
    move/from16 v1, p5

    .line 8
    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v3, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 14
    .line 15
    const-string v4, "MAccountManagerService"

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    invoke-static {v4, v5}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v7, "confirmCredentials: "

    .line 30
    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v7, ", response "

    .line 38
    .line 39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v7, ", expectActivityLaunch "

    .line 46
    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move/from16 v7, p4

    .line 51
    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v8, ", caller\'s uid "

    .line 56
    .line 57
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v8, ", pid "

    .line 64
    .line 65
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v8, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 69
    .line 70
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-static {v4, v6}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    move/from16 v7, p4

    .line 82
    .line 83
    :goto_0
    invoke-direct {v13, v3, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isCrossUser(II)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_3

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    if-eqz v11, :cond_1

    .line 92
    .line 93
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 94
    .line 95
    .line 96
    move-result-wide v14

    .line 97
    :try_start_0
    invoke-virtual {v13, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    new-instance v16, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$b;

    .line 102
    .line 103
    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 104
    .line 105
    const/4 v8, 0x1

    .line 106
    iget-object v9, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 107
    .line 108
    const/4 v10, 0x1

    .line 109
    const/4 v12, 0x1

    .line 110
    move-object/from16 v1, v16

    .line 111
    .line 112
    move-object/from16 v2, p0

    .line 113
    .line 114
    move-object/from16 v4, p1

    .line 115
    .line 116
    move/from16 v6, p4

    .line 117
    .line 118
    move v7, v8

    .line 119
    move-object v8, v9

    .line 120
    move v9, v10

    .line 121
    move v10, v12

    .line 122
    move-object/from16 v11, p2

    .line 123
    .line 124
    move-object/from16 v12, p3

    .line 125
    .line 126
    invoke-direct/range {v1 .. v12}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$b;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {v16 .. v16}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    .line 132
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 142
    .line 143
    const-string v1, "account is null"

    .line 144
    .line 145
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 150
    .line 151
    const-string v1, "response is null"

    .line 152
    .line 153
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 158
    .line 159
    new-array v3, v5, [Ljava/lang/Object;

    .line 160
    .line 161
    iget v2, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 162
    .line 163
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    const/4 v4, 0x0

    .line 168
    aput-object v2, v3, v4

    .line 169
    .line 170
    const/4 v2, 0x1

    .line 171
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    aput-object v1, v3, v2

    .line 176
    .line 177
    const-string v1, "User %s trying to confirm account credentials for %s"

    .line 178
    .line 179
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v0
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .locals 18

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    move/from16 v13, p3

    .line 8
    .line 9
    move/from16 v1, p4

    .line 10
    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v2, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 16
    .line 17
    const/4 v3, -0x1

    .line 18
    invoke-direct {v14, v2, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isCrossUser(II)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {v14, v13}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v14, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 29
    .line 30
    .line 31
    move-result-object v12

    .line 32
    const-string v2, "MAccountManagerService"

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    if-nez v12, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v5, "Copying account "

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v5, " from user "

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v5, " to user "

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 80
    .line 81
    .line 82
    move-result-wide v15

    .line 83
    :try_start_0
    new-instance v17, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;

    .line 84
    .line 85
    iget-object v5, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    const/4 v7, 0x0

    .line 89
    iget-object v8, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 90
    .line 91
    const/4 v9, 0x0

    .line 92
    move-object/from16 v1, v17

    .line 93
    .line 94
    move-object/from16 v2, p0

    .line 95
    .line 96
    move-object/from16 v4, p1

    .line 97
    .line 98
    move-object/from16 v10, p2

    .line 99
    .line 100
    move-object/from16 v11, p1

    .line 101
    .line 102
    move/from16 v13, p3

    .line 103
    .line 104
    invoke-direct/range {v1 .. v13}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$m;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {v17 .. v17}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 120
    .line 121
    new-instance v1, Landroid/os/Bundle;

    .line 122
    .line 123
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v3, "booleanResult"

    .line 127
    .line 128
    const/4 v4, 0x0

    .line 129
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    .line 131
    .line 132
    :try_start_1
    invoke-interface {v0, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    move-object v1, v0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v3, "Failed to report error back to the client."

    .line 144
    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v2, v0}, Lcom/xinzhu/overmind/utils/y;->j(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    :cond_2
    :goto_1
    return-void

    .line 159
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 160
    .line 161
    const-string v1, "Calling copyAccountToUser requires android.Manifest.permission.INTERACT_ACROSS_USERS_FULL"

    .line 162
    .line 163
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0
.end method

.method public createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .locals 9

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x3e8

    .line 12
    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    const-string v0, "account cannot be null"

    .line 16
    .line 17
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v0, "packageName cannot be null"

    .line 21
    .line 22
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v0, "userHandle cannot be null"

    .line 26
    .line 27
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/xinzhu/haunted/android/os/x;

    .line 31
    .line 32
    invoke-direct {v0, p3}, Lcom/xinzhu/haunted/android/os/x;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/x;->getIdentifier()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-ltz p3, :cond_1

    .line 40
    .line 41
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, p2, v1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, -0x1

    .line 51
    const/4 v2, 0x0

    .line 52
    if-ne v0, v1, :cond_0

    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string p3, "Unknown package "

    .line 60
    .line 61
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p2, "MAccountManagerService"

    .line 72
    .line 73
    invoke-static {p2, p1}, Lcom/xinzhu/overmind/utils/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    return-object v2

    .line 77
    :cond_0
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 82
    .line 83
    .line 84
    move-result-wide p1

    .line 85
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    const/4 v4, 0x0

    .line 90
    const/high16 v6, 0x50000000

    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    new-instance v0, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 94
    .line 95
    invoke-direct {v0, p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->I()Landroid/os/UserHandle;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-static/range {v3 .. v8}, Lcom/xinzhu/haunted/android/app/y;->c(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 107
    .line 108
    .line 109
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    .line 112
    .line 113
    return-object p3

    .line 114
    :catchall_0
    move-exception p3

    .line 115
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    .line 117
    .line 118
    throw p3

    .line 119
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    const-string p2, "user must be concrete"

    .line 122
    .line 123
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 128
    .line 129
    const-string p2, "Can be called only by system UID"

    .line 130
    .line 131
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 15

    .line 1
    move-object v11, p0

    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v10, p2

    .line 5
    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget v2, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 11
    .line 12
    const-string v3, "MAccountManagerService"

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    invoke-static {v3, v4}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v6, "editProperties: accountType "

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v6, ", response "

    .line 35
    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v6, ", expectActivityLaunch "

    .line 43
    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move/from16 v6, p3

    .line 48
    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v7, ", caller\'s uid "

    .line 53
    .line 54
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v7, ", pid "

    .line 61
    .line 62
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-static {v3, v5}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    move/from16 v6, p3

    .line 81
    .line 82
    :goto_0
    if-eqz v0, :cond_4

    .line 83
    .line 84
    if-eqz v10, :cond_3

    .line 85
    .line 86
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 87
    .line 88
    invoke-direct {p0, v10, v2, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_2

    .line 93
    .line 94
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isSystemUid(I)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    aput-object v2, v0, v1

    .line 109
    .line 110
    const/4 v1, 0x1

    .line 111
    aput-object v10, v0, v1

    .line 112
    .line 113
    const-string v1, "uid %s cannot edit authenticator properites for account type: %s"

    .line 114
    .line 115
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/SecurityException;

    .line 120
    .line 121
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v1

    .line 125
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 126
    .line 127
    .line 128
    move-result-wide v12

    .line 129
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    new-instance v14, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a;

    .line 134
    .line 135
    const/4 v7, 0x1

    .line 136
    const/4 v8, 0x0

    .line 137
    const/4 v9, 0x0

    .line 138
    move-object v1, v14

    .line 139
    move-object v2, p0

    .line 140
    move-object/from16 v4, p1

    .line 141
    .line 142
    move-object/from16 v5, p2

    .line 143
    .line 144
    move/from16 v6, p3

    .line 145
    .line 146
    move-object/from16 v10, p2

    .line 147
    .line 148
    invoke-direct/range {v1 .. v10}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v14}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    .line 154
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 164
    .line 165
    const-string v1, "accountType is null"

    .line 166
    .line 167
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 172
    .line 173
    const-string v1, "response is null"

    .line 174
    .line 175
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v0
.end method

.method public finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V
    .locals 17

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v1, p4

    .line 8
    .line 9
    move/from16 v2, p5

    .line 10
    .line 11
    const-string v3, "failed to decrypt session bundle"

    .line 12
    .line 13
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    iget v6, v5, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 18
    .line 19
    const-string v7, "MAccountManagerService"

    .line 20
    .line 21
    const/4 v8, 0x2

    .line 22
    invoke-static {v7, v8}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    if-eqz v9, :cond_0

    .line 27
    .line 28
    new-instance v9, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v10, "finishSession: response "

    .line 34
    .line 35
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v10, ", expectActivityLaunch "

    .line 42
    .line 43
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move/from16 v10, p3

    .line 47
    .line 48
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v11, ", caller\'s uid "

    .line 52
    .line 53
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v11, ", caller\'s user id "

    .line 60
    .line 61
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v11, v5, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 65
    .line 66
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v11, ", pid "

    .line 70
    .line 71
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v11, ", for user id "

    .line 82
    .line 83
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-static {v7, v9}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    move/from16 v10, p3

    .line 98
    .line 99
    :goto_0
    const-string v9, "response cannot be null"

    .line 100
    .line 101
    invoke-static {v4, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    if-eqz v0, :cond_8

    .line 105
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/BaseBundle;->size()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-eqz v9, :cond_8

    .line 111
    .line 112
    invoke-direct {v13, v6, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isCrossUser(II)Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-nez v9, :cond_7

    .line 117
    .line 118
    invoke-direct {v13, v2, v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccounts(II)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-nez v5, :cond_1

    .line 123
    .line 124
    const-string v0, "User is not allowed to add an account!"

    .line 125
    .line 126
    const/16 v1, 0x64

    .line 127
    .line 128
    invoke-direct {v13, v4, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {v13, v1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    const/16 v8, 0x8

    .line 140
    .line 141
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/c;->e()Lcom/xinzhu/overmind/server/accounts/c;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-virtual {v9, v0}, Lcom/xinzhu/overmind/server/accounts/c;->c(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    if-nez v11, :cond_2

    .line 150
    .line 151
    invoke-direct {v13, v4, v8, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_2
    const-string v0, "accountType"

    .line 156
    .line 157
    invoke-virtual {v11, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_3

    .line 166
    .line 167
    const-string v0, "accountType is empty"

    .line 168
    .line 169
    const/4 v1, 0x7

    .line 170
    invoke-direct {v13, v4, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_3
    if-eqz v1, :cond_4

    .line 175
    .line 176
    invoke-virtual {v11, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    const-string v0, "callerUid"

    .line 180
    .line 181
    invoke-virtual {v11, v0, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    const-string v0, "callerPid"

    .line 185
    .line 186
    invoke-virtual {v11, v0, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .line 188
    .line 189
    invoke-direct {v13, v2, v12, v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_5

    .line 194
    .line 195
    const-string v0, "User cannot modify accounts of this type (policy)."

    .line 196
    .line 197
    const/16 v1, 0x65

    .line 198
    .line 199
    invoke-direct {v13, v4, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-direct {v13, v1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 207
    .line 208
    .line 209
    move-result-wide v14

    .line 210
    :try_start_1
    invoke-virtual {v13, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$f;

    .line 215
    .line 216
    const/4 v7, 0x1

    .line 217
    const/4 v8, 0x0

    .line 218
    const/4 v9, 0x0

    .line 219
    const/16 v16, 0x1

    .line 220
    .line 221
    move-object v1, v0

    .line 222
    move-object/from16 v2, p0

    .line 223
    .line 224
    move-object/from16 v4, p1

    .line 225
    .line 226
    move-object v5, v12

    .line 227
    move/from16 v6, p3

    .line 228
    .line 229
    move/from16 v10, v16

    .line 230
    .line 231
    invoke-direct/range {v1 .. v12}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$f;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    .line 236
    .line 237
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 243
    .line 244
    .line 245
    throw v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const/4 v1, 0x3

    .line 248
    invoke-static {v7, v1}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_6

    .line 253
    .line 254
    const-string v1, "Failed to decrypt session bundle!"

    .line 255
    .line 256
    invoke-static {v7, v1, v0}, Lcom/xinzhu/overmind/utils/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    .line 258
    .line 259
    :cond_6
    invoke-direct {v13, v4, v8, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    .line 264
    .line 265
    new-array v1, v8, [Ljava/lang/Object;

    .line 266
    .line 267
    iget v3, v5, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 268
    .line 269
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    const/4 v4, 0x0

    .line 274
    aput-object v3, v1, v4

    .line 275
    .line 276
    const/4 v3, 0x1

    .line 277
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    aput-object v2, v1, v3

    .line 282
    .line 283
    const-string v2, "User %s trying to finish session for %s without cross user permission"

    .line 284
    .line 285
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw v0

    .line 293
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 294
    .line 295
    const-string v1, "sessionBundle is empty"

    .line 296
    .line 297
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw v0
.end method

.method public getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    move-object v10, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object v5, p2

    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget v7, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const-string v3, "MAccountManagerService"

    .line 14
    .line 15
    invoke-static {v3, v2}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "getAccount: accountType "

    .line 27
    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, ", response "

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, ", features "

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v4, ", caller\'s uid "

    .line 55
    .line 56
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, ", pid "

    .line 63
    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v3, v2}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_0
    if-eqz v0, :cond_3

    .line 82
    .line 83
    if-eqz v5, :cond_2

    .line 84
    .line 85
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 86
    .line 87
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 88
    .line 89
    .line 90
    move-result-wide v11

    .line 91
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static/range {p3 .. p3}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    const/4 v6, 0x1

    .line 102
    move-object v1, p0

    .line 103
    move-object v2, v3

    .line 104
    move-object v3, p2

    .line 105
    move v4, v7

    .line 106
    move-object/from16 v5, p4

    .line 107
    .line 108
    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsFromCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {p0, p1, v1, v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_1
    :try_start_1
    new-instance v4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$k;

    .line 120
    .line 121
    invoke-direct {v4, p0, p1, v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$k;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;

    .line 125
    .line 126
    const/4 v9, 0x1

    .line 127
    move-object v1, v0

    .line 128
    move-object v2, p0

    .line 129
    move-object v5, p2

    .line 130
    move-object/from16 v6, p3

    .line 131
    .line 132
    move-object/from16 v8, p4

    .line 133
    .line 134
    invoke-direct/range {v1 .. v9}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    .line 140
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 150
    .line 151
    const-string v1, "accountType is null"

    .line 152
    .line 153
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 158
    .line 159
    const-string v1, "response is null"

    .line 160
    .line 161
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0
.end method

.method public getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string v0, "account cannot be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "packageName cannot be null"

    .line 7
    .line 8
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 16
    .line 17
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 18
    .line 19
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isSystemUid(I)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-array p2, v3, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    aput-object v1, p2, v0

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 46
    .line 47
    aput-object p1, p2, v0

    .line 48
    .line 49
    const-string p1, "uid %s cannot get secrets for accounts of type: %s"

    .line 50
    .line 51
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance p2, Ljava/lang/SecurityException;

    .line 56
    .line 57
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p2

    .line 61
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v4, "android:accounts:key_legacy_visible"

    .line 70
    .line 71
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 78
    .line 79
    .line 80
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    return p1

    .line 87
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    return v3

    .line 91
    :cond_3
    :try_start_1
    const-string v3, "android:accounts:key_legacy_not_visible"

    .line 92
    .line 93
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 100
    .line 101
    .line 102
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    .line 107
    .line 108
    return p1

    .line 109
    :cond_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    .line 111
    .line 112
    const/4 p1, 0x4

    .line 113
    return p1

    .line 114
    :cond_5
    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    .line 124
    .line 125
    return p1

    .line 126
    :catchall_0
    move-exception p1

    .line 127
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    .line 129
    .line 130
    throw p1
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 9

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 2
    iget v3, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 3
    invoke-direct {p0, v3, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p2

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10
    throw p1
.end method

.method public getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 14
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 15
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    const/16 v2, 0x3e8

    .line 16
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->B(II)Z

    move-result v2

    .line 17
    invoke-direct {p0, v1, v0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 18
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountsAndVisibilityForPackage() called from unauthorized uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 23
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object p2

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v3, v0, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    throw p1
.end method

.method public getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 7

    .line 1
    const/4 v4, -0x1

    .line 2
    const/4 v6, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v5, p3

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 1
    move-object v10, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object/from16 v5, p2

    .line 4
    .line 5
    move-object/from16 v6, p3

    .line 6
    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v7, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    const-string v3, "MAccountManagerService"

    .line 15
    .line 16
    invoke-static {v3, v2}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "getAccounts: accountType "

    .line 28
    .line 29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v4, ", response "

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v4, ", features "

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, ", caller\'s uid "

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, ", pid "

    .line 64
    .line 65
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v3, v2}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_0
    if-eqz v0, :cond_5

    .line 83
    .line 84
    if-eqz v5, :cond_4

    .line 85
    .line 86
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 87
    .line 88
    move-object/from16 v8, p4

    .line 89
    .line 90
    invoke-direct {p0, v7, v1, v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    const-string v9, "accounts"

    .line 99
    .line 100
    if-nez v2, :cond_1

    .line 101
    .line 102
    new-instance v1, Landroid/os/Bundle;

    .line 103
    .line 104
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 105
    .line 106
    .line 107
    sget-object v2, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 108
    .line 109
    invoke-virtual {v1, v9, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 110
    .line 111
    .line 112
    :try_start_0
    invoke-interface {p1, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    move-object v1, v0

    .line 118
    const-string v0, "Cannot respond to caller do to exception."

    .line 119
    .line 120
    invoke-static {v3, v0, v1}, Lcom/xinzhu/overmind/utils/q;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .line 122
    .line 123
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 125
    .line 126
    .line 127
    move-result-wide v11

    .line 128
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    if-eqz v6, :cond_3

    .line 133
    .line 134
    array-length v1, v6

    .line 135
    if-nez v1, :cond_2

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_2
    new-instance v13, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;

    .line 139
    .line 140
    const/4 v9, 0x0

    .line 141
    move-object v1, v13

    .line 142
    move-object v2, p0

    .line 143
    move-object v4, p1

    .line 144
    move-object/from16 v5, p2

    .line 145
    .line 146
    move-object/from16 v6, p3

    .line 147
    .line 148
    move-object/from16 v8, p4

    .line 149
    .line 150
    invoke-direct/range {v1 .. v9}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$s;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v13}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .line 155
    .line 156
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_3
    :goto_1
    const/4 v6, 0x0

    .line 161
    move-object v1, p0

    .line 162
    move-object v2, v3

    .line 163
    move-object/from16 v3, p2

    .line 164
    .line 165
    move v4, v7

    .line 166
    move-object/from16 v5, p4

    .line 167
    .line 168
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsFromCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-instance v2, Landroid/os/Bundle;

    .line 173
    .line 174
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v9, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, p1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    .line 182
    .line 183
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 193
    .line 194
    const-string v1, "accountType is null"

    .line 195
    .line 196
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v0

    .line 200
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 201
    .line 202
    const-string v1, "response is null"

    .line 203
    .line 204
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw v0
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 9

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    iget v4, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 8
    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, p2, v2, v4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    const/4 v0, -0x1

    .line 19
    if-ne v6, v0, :cond_0

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string p3, "Couldn\'t determine the packageUid for "

    .line 27
    .line 28
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "MAccountManagerService"

    .line 39
    .line 40
    invoke-static {p2, p1}, Lcom/xinzhu/overmind/utils/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_0
    const/16 v0, 0x3e8

    .line 47
    .line 48
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->B(II)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-direct {p0, p1, v1, v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_1
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->B(II)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    move-object v2, p0

    .line 75
    move-object v3, p1

    .line 76
    move-object v5, p2

    .line 77
    move-object v7, p3

    .line 78
    invoke-direct/range {v2 .. v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :cond_2
    const/4 v8, 0x1

    .line 84
    move-object v2, p0

    .line 85
    move-object v3, p1

    .line 86
    move-object v5, p2

    .line 87
    move-object v7, p3

    .line 88
    invoke-direct/range {v2 .. v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1
.end method

.method public getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 10

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    const/16 v2, 0x3e8

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->B(II)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    iget v5, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 17
    .line 18
    const/4 v9, 0x1

    .line 19
    move-object v3, p0

    .line 20
    move-object v6, p1

    .line 21
    move v7, p2

    .line 22
    move-object v8, p3

    .line 23
    invoke-direct/range {v3 .. v9}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    .line 29
    .line 30
    new-instance p3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v0, "getAccountsForPackage() called from unauthorized uid "

    .line 36
    .line 37
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, " with uid="

    .line 44
    .line 45
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method protected getAccountsFromCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .locals 6

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, [Landroid/accounts/Account;

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    array-length v0, p2

    .line 21
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    move-object v2, p2

    .line 26
    check-cast v2, [Landroid/accounts/Account;

    .line 27
    .line 28
    move-object v0, p0

    .line 29
    move-object v1, p1

    .line 30
    move v3, p3

    .line 31
    move-object v4, p4

    .line 32
    move v5, p5

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->filterAccounts(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1

    .line 41
    :cond_1
    iget-object p2, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p2

    .line 44
    :try_start_2
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    const/4 v2, 0x0

    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, [Landroid/accounts/Account;

    .line 67
    .line 68
    array-length v3, v3

    .line 69
    add-int/2addr v2, v3

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    if-nez v2, :cond_3

    .line 72
    .line 73
    sget-object p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 74
    .line 75
    monitor-exit p2

    .line 76
    return-object p1

    .line 77
    :cond_3
    new-array v2, v2, [Landroid/accounts/Account;

    .line 78
    .line 79
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->f:Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/4 v3, 0x0

    .line 90
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_4

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, [Landroid/accounts/Account;

    .line 101
    .line 102
    array-length v5, v4

    .line 103
    invoke-static {v4, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    .line 105
    .line 106
    array-length v4, v4

    .line 107
    add-int/2addr v3, v4

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    move-object v0, p0

    .line 111
    move-object v1, p1

    .line 112
    move v3, p3

    .line 113
    move-object v4, p4

    .line 114
    move v5, p5

    .line 115
    invoke-direct/range {v0 .. v5}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->filterAccounts(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :catchall_1
    move-exception p1

    .line 121
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    throw p1
.end method

.method public getAllAccounts()[Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;
    .locals 5

    .line 1
    invoke-static {}, Lma/i;->d()Lma/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lma/i;->f()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-array v2, v1, [I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 23
    .line 24
    iget v4, v4, Lcom/xinzhu/overmind/server/user/MindUserInfo;->b:I

    .line 25
    .line 26
    aput v4, v2, v3

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccounts([I)[Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;I)V
    .locals 24

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v11, p2

    .line 6
    .line 7
    move-object/from16 v12, p3

    .line 8
    .line 9
    move/from16 v13, p4

    .line 10
    .line 11
    move-object/from16 v10, p6

    .line 12
    .line 13
    move/from16 v14, p7

    .line 14
    .line 15
    const-string v7, "MAccountManagerService"

    .line 16
    .line 17
    const/4 v8, 0x2

    .line 18
    invoke-static {v7, v8}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "getAuthToken: "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ", response "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ", authTokenType "

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ", notifyOnAuthFailure "

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, ", expectActivityLaunch "

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move/from16 v9, p5

    .line 67
    .line 68
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, ", caller\'s uid "

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget v2, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, ", pid "

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v7, v1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    move/from16 v9, p5

    .line 106
    .line 107
    :goto_0
    const-string v1, "response cannot be null"

    .line 108
    .line 109
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    const/4 v1, 0x7

    .line 113
    if-nez v11, :cond_1

    .line 114
    .line 115
    :try_start_0
    const-string v2, "getAuthToken called with null account"

    .line 116
    .line 117
    invoke-static {v7, v2}, Lcom/xinzhu/overmind/utils/y;->j(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    const-string v2, "account is null"

    .line 121
    .line 122
    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    goto :goto_1

    .line 128
    :cond_1
    if-nez v12, :cond_2

    .line 129
    .line 130
    const-string v2, "getAuthToken called with null authTokenType"

    .line 131
    .line 132
    invoke-static {v7, v2}, Lcom/xinzhu/overmind/utils/y;->j(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    const-string v2, "authTokenType is null"

    .line 136
    .line 137
    invoke-interface {v0, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v2, "Failed to report error back to the client."

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v7, v0}, Lcom/xinzhu/overmind/utils/y;->j(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_2
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 167
    .line 168
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 169
    .line 170
    .line 171
    move-result-wide v2

    .line 172
    :try_start_1
    invoke-virtual {v15, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    iget-object v4, v15, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAuthenticatorCache:Lcom/xinzhu/overmind/server/accounts/d;

    .line 177
    .line 178
    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {v5}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-static {v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    invoke-interface {v4, v5, v8}, Lcom/xinzhu/overmind/server/accounts/d;->b(Landroid/accounts/AuthenticatorDescription;I)Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;

    .line 189
    .line 190
    .line 191
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 192
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    .line 194
    .line 195
    const/4 v2, 0x0

    .line 196
    const/4 v3, 0x1

    .line 197
    if-eqz v4, :cond_3

    .line 198
    .line 199
    iget-object v4, v4, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$c;->a:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v4, Landroid/accounts/AuthenticatorDescription;

    .line 202
    .line 203
    iget-boolean v4, v4, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    .line 204
    .line 205
    if-eqz v4, :cond_3

    .line 206
    .line 207
    const/16 v17, 0x1

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_3
    const/16 v17, 0x0

    .line 211
    .line 212
    :goto_2
    if-nez v17, :cond_5

    .line 213
    .line 214
    invoke-direct {v15, v11, v12, v14, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_4

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_4
    const/16 v18, 0x0

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_5
    :goto_3
    const/16 v18, 0x1

    .line 225
    .line 226
    :goto_4
    const-string v1, "androidPackageName"

    .line 227
    .line 228
    invoke-virtual {v10, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 233
    .line 234
    .line 235
    move-result-wide v4

    .line 236
    :try_start_2
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v1, v14}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 248
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 249
    .line 250
    .line 251
    if-eqz v8, :cond_b

    .line 252
    .line 253
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_b

    .line 258
    .line 259
    const-string v1, "callerUid"

    .line 260
    .line 261
    invoke-virtual {v10, v1, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    const-string v1, "callerPid"

    .line 265
    .line 266
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    invoke-virtual {v10, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 271
    .line 272
    .line 273
    if-eqz v13, :cond_6

    .line 274
    .line 275
    const-string v1, "notifyOnAuthFailure"

    .line 276
    .line 277
    invoke-virtual {v10, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    .line 279
    .line 280
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 281
    .line 282
    .line 283
    move-result-wide v20

    .line 284
    :try_start_3
    invoke-direct {v15, v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->calculatePackageSignatureDigest(Ljava/lang/String;)[B

    .line 285
    .line 286
    .line 287
    move-result-object v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    const-string v5, "accountType"

    .line 289
    .line 290
    const-string v4, "authAccount"

    .line 291
    .line 292
    const-string v3, "authtoken"

    .line 293
    .line 294
    if-nez v17, :cond_7

    .line 295
    .line 296
    if-eqz v18, :cond_7

    .line 297
    .line 298
    :try_start_4
    invoke-virtual {v15, v6, v11, v12}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->readAuthTokenInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    if-eqz v1, :cond_7

    .line 303
    .line 304
    new-instance v2, Landroid/os/Bundle;

    .line 305
    .line 306
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    iget-object v1, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    iget-object v1, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {v2, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-direct {v15, v0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 323
    .line 324
    .line 325
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_7
    if-eqz v17, :cond_9

    .line 330
    .line 331
    move-object/from16 v1, p0

    .line 332
    .line 333
    move-object v2, v6

    .line 334
    move-object v9, v3

    .line 335
    move-object/from16 v3, p2

    .line 336
    .line 337
    move-object v10, v4

    .line 338
    move-object/from16 v4, p3

    .line 339
    .line 340
    move-object v12, v5

    .line 341
    move-object v5, v8

    .line 342
    move-object/from16 v22, v6

    .line 343
    .line 344
    move-object/from16 v6, v19

    .line 345
    .line 346
    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->readCachedTokenInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    if-eqz v1, :cond_a

    .line 351
    .line 352
    const/4 v2, 0x2

    .line 353
    invoke-static {v7, v2}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_8

    .line 358
    .line 359
    const-string v2, "getAuthToken: cache hit ofr custom token authenticator."

    .line 360
    .line 361
    invoke-static {v7, v2}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .line 363
    .line 364
    :cond_8
    new-instance v2, Landroid/os/Bundle;

    .line 365
    .line 366
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v9, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    iget-object v1, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {v2, v10, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object v1, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 378
    .line 379
    invoke-virtual {v2, v12, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-direct {v15, v0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 383
    .line 384
    .line 385
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 386
    .line 387
    .line 388
    return-void

    .line 389
    :cond_9
    move-object/from16 v22, v6

    .line 390
    .line 391
    :cond_a
    :try_start_6
    new-instance v23, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;

    .line 392
    .line 393
    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 394
    .line 395
    const/4 v7, 0x0

    .line 396
    iget-object v10, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 397
    .line 398
    const/4 v9, 0x0

    .line 399
    move-object/from16 v1, v23

    .line 400
    .line 401
    move-object/from16 v2, p0

    .line 402
    .line 403
    move-object/from16 v3, v22

    .line 404
    .line 405
    move-object/from16 v4, p1

    .line 406
    .line 407
    move/from16 v6, p5

    .line 408
    .line 409
    move-object v0, v8

    .line 410
    move-object v8, v10

    .line 411
    move-object/from16 v10, p6

    .line 412
    .line 413
    move-object/from16 v11, p2

    .line 414
    .line 415
    move-object/from16 v12, p3

    .line 416
    .line 417
    move/from16 v13, p4

    .line 418
    .line 419
    move/from16 v14, v18

    .line 420
    .line 421
    move/from16 v15, p7

    .line 422
    .line 423
    move/from16 v16, v17

    .line 424
    .line 425
    move-object/from16 v17, v0

    .line 426
    .line 427
    move-object/from16 v18, v19

    .line 428
    .line 429
    move-object/from16 v19, v22

    .line 430
    .line 431
    invoke-direct/range {v1 .. v19}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$n;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual/range {v23 .. v23}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 435
    .line 436
    .line 437
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    .line 439
    .line 440
    return-void

    .line 441
    :catchall_0
    move-exception v0

    .line 442
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 443
    .line 444
    .line 445
    throw v0

    .line 446
    :cond_b
    move-object v0, v8

    .line 447
    const/4 v1, 0x2

    .line 448
    new-array v1, v1, [Ljava/lang/Object;

    .line 449
    .line 450
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    aput-object v4, v1, v2

    .line 455
    .line 456
    aput-object v0, v1, v3

    .line 457
    .line 458
    const-string v0, "Uid %s is attempting to illegally masquerade as package %s!"

    .line 459
    .line 460
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    new-instance v1, Ljava/lang/SecurityException;

    .line 465
    .line 466
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    throw v1

    .line 470
    :catchall_1
    move-exception v0

    .line 471
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 472
    .line 473
    .line 474
    throw v0

    .line 475
    :catchall_2
    move-exception v0

    .line 476
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 477
    .line 478
    .line 479
    throw v0
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    .line 1
    const-string v0, "accountType cannot be null"

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    const-string v0, "authTokenType cannot be null"

    .line 9
    .line 10
    move-object/from16 v11, p3

    .line 11
    .line 12
    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v2, 0x3e8

    .line 27
    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    .line 36
    .line 37
    move-result-wide v12

    .line 38
    move-object v14, p0

    .line 39
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$c;

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    move-object v1, v0

    .line 50
    move-object v2, p0

    .line 51
    move-object/from16 v4, p1

    .line 52
    .line 53
    move-object/from16 v5, p2

    .line 54
    .line 55
    move-object/from16 v10, p2

    .line 56
    .line 57
    move-object/from16 v11, p3

    .line 58
    .line 59
    invoke-direct/range {v1 .. v11}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$c;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_0
    move-object v14, p0

    .line 75
    new-instance v0, Ljava/lang/SecurityException;

    .line 76
    .line 77
    const-string v1, "can only call from system"

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 6

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    const-string v2, "MAccountManagerService"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "getAuthenticatorTypes: for user id "

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v5, " caller\'s uid "

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v5, ", pid "

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isCrossUser(II)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;

    .line 67
    .line 68
    .line 69
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    .line 80
    .line 81
    new-array v2, v3, [Ljava/lang/Object;

    .line 82
    .line 83
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 84
    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/4 v3, 0x0

    .line 90
    aput-object v0, v2, v3

    .line 91
    .line 92
    const/4 v0, 0x1

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    aput-object p1, v2, v0

    .line 98
    .line 99
    const-string p1, "User %s tying to get authenticator types for %s"

    .line 100
    .line 101
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v1
.end method

.method public getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "account cannot be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 11
    .line 12
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 13
    .line 14
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isSystemUid(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "uid %s cannot get secrets for account %s"

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    new-array v2, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    aput-object v1, v2, v3

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    aput-object p1, v2, v1

    .line 43
    .line 44
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Ljava/lang/SecurityException;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v3, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    const-string v2, "MAccountManagerService"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "getPassword: "

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v5, ", caller\'s uid "

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v5, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, ", pid "

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v5, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    if-eqz p1, :cond_2

    .line 57
    .line 58
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 59
    .line 60
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 61
    .line 62
    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->readPasswordInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    aput-object v1, v0, v2

    .line 97
    .line 98
    const/4 v1, 0x1

    .line 99
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 100
    .line 101
    aput-object p1, v0, v1

    .line 102
    .line 103
    const-string p1, "uid %s cannot get secrets for accounts of type: %s"

    .line 104
    .line 105
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-instance v0, Ljava/lang/SecurityException;

    .line 110
    .line 111
    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    const-string v0, "account is null"

    .line 118
    .line 119
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
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
    const-string v2, "getPreviousName: "

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ", caller\'s uid "

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget v2, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ", pid "

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "account cannot be null"

    .line 61
    .line 62
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 66
    .line 67
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->readPreviousNameInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    return-object p1

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v0, "Not implemented."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method protected getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->purgeOldGrants(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    return-object v1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p1
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    const-string v2, "MAccountManagerService"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    const/4 v4, 0x4

    .line 19
    new-array v4, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object p1, v4, v6

    .line 22
    .line 23
    aput-object p2, v4, v5

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    aput-object v7, v4, v3

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const/4 v8, 0x3

    .line 40
    aput-object v7, v4, v8

    .line 41
    .line 42
    const-string v7, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    .line 43
    .line 44
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    const-string v2, "account cannot be null"

    .line 52
    .line 53
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v2, "key cannot be null"

    .line 57
    .line 58
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 62
    .line 63
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->readUserDataInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    return-object p1

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    .line 93
    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    aput-object v0, p2, v6

    .line 99
    .line 100
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 101
    .line 102
    aput-object p1, p2, v5

    .line 103
    .line 104
    const-string p1, "uid %s cannot get user data for accounts of type: %s"

    .line 105
    .line 106
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance p2, Ljava/lang/SecurityException;

    .line 111
    .line 112
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p2
.end method

.method grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-static {p3}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->q(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveUidGrantsLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->j(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->F(I)Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p0, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 36
    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    invoke-direct {p0, p1, p3, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    .line 40
    .line 41
    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object p2, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->mHandler:Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$t;

    .line 62
    .line 63
    new-instance v2, Lcom/xinzhu/overmind/server/accounts/g;

    .line 64
    .line 65
    invoke-direct {v2, v0, p1, p3}, Lcom/xinzhu/overmind/server/accounts/g;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$v;Landroid/accounts/Account;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p1

    .line 76
    :cond_2
    :goto_1
    const-string p1, "MAccountManagerService"

    .line 77
    .line 78
    const-string p2, "grantAppPermission: called with invalid arguments"

    .line 79
    .line 80
    new-instance p3, Ljava/lang/Exception;

    .line 81
    .line 82
    invoke-direct {p3}, Ljava/lang/Exception;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-static {p1, p2, p3}, Lcom/xinzhu/overmind/utils/q;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    const-string v0, "account cannot be null"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "packageName cannot be null"

    .line 7
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "userHandle cannot be null"

    .line 8
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    new-instance v0, Lcom/xinzhu/haunted/android/os/x;

    invoke-direct {v0, p3}, Lcom/xinzhu/haunted/android/os/x;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/os/x;->getIdentifier()I

    move-result p3

    if-ltz p3, :cond_1

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    const-string p1, "MAccountManagerService"

    const-string p2, "Package not found "

    .line 11
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/utils/q;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p1

    return p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "user must be concrete"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Can be called only by system UID"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "MAccountManagerService"

    .line 7
    .line 8
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "hasFeatures: "

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ", response "

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, ", features "

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, ", caller\'s uid "

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v3, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, ", pid "

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_0
    const-string v1, "account cannot be null"

    .line 77
    .line 78
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const-string v1, "response cannot be null"

    .line 82
    .line 83
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const-string v1, "features cannot be null"

    .line 87
    .line 88
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 92
    .line 93
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 94
    .line 95
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 96
    .line 97
    invoke-direct {p0, v0, v2, v1, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 101
    .line 102
    .line 103
    move-result-wide v2

    .line 104
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    new-instance p4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$z;

    .line 109
    .line 110
    move-object v4, p4

    .line 111
    move-object v5, p0

    .line 112
    move-object v7, p1

    .line 113
    move-object v8, p2

    .line 114
    move-object v9, p3

    .line 115
    invoke-direct/range {v4 .. v9}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$z;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    .line 121
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    .line 128
    .line 129
    throw p1
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    const-string v2, "accountType cannot be null"

    .line 8
    .line 9
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const-string v2, "authToken cannot be null"

    .line 13
    .line 14
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-string v2, "MAccountManagerService"

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v2, "MAccountManagerService"

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v4, "invalidateAuthToken: accountType "

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v4, ", caller\'s uid "

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ", pid "

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_0
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 69
    .line 70
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v3, v0, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :try_start_1
    invoke-direct {p0, v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->invalidateAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_1

    .line 94
    .line 95
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Landroid/util/Pair;

    .line 100
    .line 101
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v6, Landroid/accounts/Account;

    .line 104
    .line 105
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v5, Ljava/lang/String;

    .line 108
    .line 109
    const/4 v7, 0x0

    .line 110
    invoke-virtual {p0, v0, v6, v5, v7}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    invoke-static {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->i(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Lcom/xinzhu/overmind/server/accounts/i;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :catchall_0
    move-exception p1

    .line 127
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    :catchall_1
    move-exception p1

    .line 130
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    .line 132
    .line 133
    throw p1
.end method

.method public isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "MAccountManagerService"

    .line 7
    .line 8
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "isCredentialsUpdateSuggested: "

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ", response "

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, ", caller\'s uid "

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget v3, v3, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v3, ", pid "

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_0
    if-eqz v0, :cond_3

    .line 69
    .line 70
    if-eqz v10, :cond_2

    .line 71
    .line 72
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 83
    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 85
    .line 86
    .line 87
    move-result-wide v12

    .line 88
    move-object/from16 v14, p0

    .line 89
    .line 90
    :try_start_0
    invoke-virtual {v14, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    new-instance v15, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$g;

    .line 95
    .line 96
    iget-object v5, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 97
    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    iget-object v8, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 101
    .line 102
    const/4 v9, 0x0

    .line 103
    move-object v1, v15

    .line 104
    move-object/from16 v2, p0

    .line 105
    .line 106
    move-object/from16 v4, p1

    .line 107
    .line 108
    move-object/from16 v10, p2

    .line 109
    .line 110
    move-object/from16 v11, p3

    .line 111
    .line 112
    invoke-direct/range {v1 .. v11}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$g;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v15}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_1
    move-object/from16 v14, p0

    .line 128
    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    const-string v1, "status token is empty"

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_2
    move-object/from16 v14, p0

    .line 138
    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    const-string v1, "account is null"

    .line 142
    .line 143
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_3
    move-object/from16 v14, p0

    .line 148
    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 150
    .line 151
    const-string v1, "response is null"

    .line 152
    .line 153
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0
.end method

.method public onAccountAccessed(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    invoke-static {v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x3e8

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    :try_start_0
    const-string v4, "android"

    .line 23
    .line 24
    invoke-virtual {p0, v0, v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    array-length v4, v0

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    if-ge v5, v4, :cond_2

    .line 31
    .line 32
    aget-object v6, v0, v5

    .line 33
    .line 34
    new-instance v7, Ll8/a;

    .line 35
    .line 36
    invoke-direct {v7, v6}, Ll8/a;-><init>(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7}, Ll8/a;->h()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    invoke-direct {p0, v6, v7, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-nez v7, :cond_1

    .line 55
    .line 56
    const-string v7, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 57
    .line 58
    const/4 v8, 0x1

    .line 59
    invoke-virtual {p0, v6, v7, v1, v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    const-string v2, "MAccountManagerService"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "peekAuthToken: "

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v5, ", authTokenType "

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v5, ", caller\'s uid "

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v5, ", pid "

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    const-string v2, "account cannot be null"

    .line 65
    .line 66
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-string v2, "authTokenType cannot be null"

    .line 70
    .line 71
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 75
    .line 76
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p0, v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->readAuthTokenInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    .line 98
    .line 99
    return-object p1

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    aput-object v1, p2, v0

    .line 113
    .line 114
    const/4 v0, 0x1

    .line 115
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 116
    .line 117
    aput-object p1, p2, v0

    .line 118
    .line 119
    const-string p1, "uid %s cannot peek the authtokens associated with accounts of type: %s"

    .line 120
    .line 121
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance p2, Ljava/lang/SecurityException;

    .line 126
    .line 127
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p2
.end method

.method protected readAuthTokenInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/Map;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object p1

    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    const/4 p1, 0x0

    .line 26
    return-object p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1
.end method

.method protected readCachedTokenInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->i(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Lcom/xinzhu/overmind/server/accounts/i;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/xinzhu/overmind/server/accounts/i;->a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    monitor-exit v0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1
.end method

.method public readUserDataInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/Map;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1
.end method

.method public registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 10
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 11
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 12
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 14
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    throw p1
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    const-string v2, "MAccountManagerService"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const-string v2, "MAccountManagerService"

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v5, "removeAccount: "

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v5, ", response "

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, ", caller\'s uid "

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v5, ", pid "

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v5, ", for user id "

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_0
    const-string v2, "account cannot be null"

    .line 75
    .line 76
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const-string v2, "response cannot be null"

    .line 80
    .line 81
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v1, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isCrossUser(II)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const/4 v4, 0x1

    .line 89
    const/4 v5, 0x0

    .line 90
    if-nez v2, :cond_4

    .line 91
    .line 92
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 93
    .line 94
    invoke-direct {p0, v0, v1, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    invoke-virtual {p0, p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    new-instance v2, Lcom/xinzhu/overmind/server/user/MindUserHandle;

    .line 109
    .line 110
    invoke-direct {v2, p4}, Lcom/xinzhu/overmind/server/user/MindUserHandle;-><init>(I)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, v4, p2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getSigninRequiredNotificationId(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 114
    .line 115
    .line 116
    move-result-object p4

    .line 117
    invoke-direct {p0, p4, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    .line 121
    .line 122
    .line 123
    move-result-object p4

    .line 124
    monitor-enter p4

    .line 125
    :try_start_0
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_2

    .line 142
    .line 143
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Landroid/util/Pair;

    .line 148
    .line 149
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v6, Landroid/util/Pair;

    .line 152
    .line 153
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 154
    .line 155
    invoke-virtual {p2, v6}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-eqz v6, :cond_1

    .line 160
    .line 161
    invoke-static {v4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->h(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/HashMap;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    check-cast v5, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;

    .line 170
    .line 171
    invoke-direct {p0, v5, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->cancelNotification(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$u;Lcom/xinzhu/overmind/server/user/MindUserHandle;)V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_2
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    :try_start_1
    new-instance p4, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$w;

    .line 177
    .line 178
    move-object v2, p4

    .line 179
    move-object v3, p0

    .line 180
    move-object v5, p1

    .line 181
    move-object v6, p2

    .line 182
    move v7, p3

    .line 183
    invoke-direct/range {v2 .. v7}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$w;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p4}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :catchall_0
    move-exception p1

    .line 194
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    .line 196
    .line 197
    throw p1

    .line 198
    :catchall_1
    move-exception p1

    .line 199
    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 200
    throw p1

    .line 201
    :cond_3
    const-string p1, "uid %s cannot remove accounts of type: %s"

    .line 202
    .line 203
    new-array p3, v3, [Ljava/lang/Object;

    .line 204
    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object p4

    .line 209
    aput-object p4, p3, v5

    .line 210
    .line 211
    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 212
    .line 213
    aput-object p2, p3, v4

    .line 214
    .line 215
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    new-instance p2, Ljava/lang/SecurityException;

    .line 220
    .line 221
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw p2

    .line 225
    :cond_4
    new-instance p1, Ljava/lang/SecurityException;

    .line 226
    .line 227
    const-string p2, "User %s tying remove account for %s"

    .line 228
    .line 229
    new-array p3, v3, [Ljava/lang/Object;

    .line 230
    .line 231
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 232
    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    aput-object v0, p3, v5

    .line 238
    .line 239
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object p4

    .line 243
    aput-object p4, p3, v4

    .line 244
    .line 245
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p1
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    const-string v2, "MAccountManagerService"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "removeAccountExplicitly: "

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v5, ", caller\'s uid "

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v5, ", pid "

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    const-string p1, "account is null"

    .line 62
    .line 63
    invoke-static {v2, p1}, Lcom/xinzhu/overmind/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return v4

    .line 67
    :cond_1
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccountsForCaller()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    :try_start_0
    invoke-direct {p0, v0, p1, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->removeAccountInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;I)Z

    .line 84
    .line 85
    .line 86
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    return p1

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    .line 97
    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    aput-object v1, v0, v4

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 106
    .line 107
    aput-object p1, v0, v1

    .line 108
    .line 109
    const-string p1, "uid %s cannot explicitly remove accounts of type: %s"

    .line 110
    .line 111
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    new-instance v0, Ljava/lang/SecurityException;

    .line 116
    .line 117
    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0
.end method

.method public removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string p2, "Not implemented."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    const-string v2, "MAccountManagerService"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "renameAccount: "

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v5, " -> "

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v5, ", caller\'s uid "

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v5, ", pid "

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    if-eqz p2, :cond_2

    .line 65
    .line 66
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 67
    .line 68
    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {p0, v4, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_1

    .line 75
    .line 76
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p0, v0, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->renameAccountInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    new-instance p3, Landroid/os/Bundle;

    .line 89
    .line 90
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v0, "authAccount"

    .line 94
    .line 95
    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v0, "accountType"

    .line 101
    .line 102
    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v0, "accountAccessId"

    .line 108
    .line 109
    new-instance v1, Ll8/a;

    .line 110
    .line 111
    invoke-direct {v1, p2}, Ll8/a;-><init>(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ll8/a;->h()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    .line 121
    :try_start_1
    invoke-interface {p1, p3}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catch_0
    move-exception p1

    .line 126
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {v2, p1}, Lcom/xinzhu/overmind/utils/q;->k(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    .line 133
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :catchall_0
    move-exception p1

    .line 138
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    .line 140
    .line 141
    throw p1

    .line 142
    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    .line 143
    .line 144
    const/4 p3, 0x0

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    aput-object v0, p1, p3

    .line 150
    .line 151
    const/4 p3, 0x1

    .line 152
    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 153
    .line 154
    aput-object p2, p1, p3

    .line 155
    .line 156
    const-string p2, "uid %s cannot rename accounts of type: %s"

    .line 157
    .line 158
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    new-instance p2, Ljava/lang/SecurityException;

    .line 163
    .line 164
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p2

    .line 168
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    const-string p2, "account is null"

    .line 171
    .line 172
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1
.end method

.method public renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string p2, "Not implemented."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 9

    const-string v0, "account cannot be null"

    .line 31
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "packageName cannot be null"

    .line 32
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 34
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 35
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 36
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, p3

    const-string p1, "uid %s cannot get secrets for accounts of type: %s"

    .line 39
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 40
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 41
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 42
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v8

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 43
    invoke-direct/range {v3 .. v8}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    throw p1
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    const-string v2, "MAccountManagerService"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "setAuthToken: "

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v5, ", authTokenType "

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v5, ", caller\'s uid "

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v5, ", pid "

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    const-string v2, "account cannot be null"

    .line 65
    .line 66
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-string v2, "authTokenType cannot be null"

    .line 70
    .line 71
    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 75
    .line 76
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAuthTokenToDatabase(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    .line 105
    .line 106
    const/4 p3, 0x0

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    aput-object v0, p2, p3

    .line 112
    .line 113
    const/4 p3, 0x1

    .line 114
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 115
    .line 116
    aput-object p1, p2, p3

    .line 117
    .line 118
    const-string p1, "uid %s cannot set auth tokens associated with accounts of type: %s"

    .line 119
    .line 120
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance p2, Ljava/lang/SecurityException;

    .line 125
    .line 126
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p2
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    const-string v2, "MAccountManagerService"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "setAuthToken: "

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v5, ", caller\'s uid "

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v5, ", pid "

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    const-string v2, "account cannot be null"

    .line 57
    .line 58
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 62
    .line 63
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->setPasswordInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    aput-object v1, p2, v0

    .line 99
    .line 100
    const/4 v0, 0x1

    .line 101
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 102
    .line 103
    aput-object p1, p2, v0

    .line 104
    .line 105
    const-string p1, "uid %s cannot set secrets for accounts of type: %s"

    .line 106
    .line 107
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    new-instance p2, Ljava/lang/SecurityException;

    .line 112
    .line 113
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p2
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    const-string v2, "MAccountManagerService"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "setUserData: "

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v5, ", key "

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v5, ", caller\'s uid "

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v5, ", pid "

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    if-eqz p2, :cond_4

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 69
    .line 70
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 71
    .line 72
    invoke-direct {p0, v2, v1, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->accountExistsCache(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;)Z

    .line 87
    .line 88
    .line 89
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-nez v3, :cond_1

    .line 91
    .line 92
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->setUserdataInternal(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_2
    new-array p2, v3, [Ljava/lang/Object;

    .line 109
    .line 110
    const/4 p3, 0x0

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    aput-object v0, p2, p3

    .line 116
    .line 117
    const/4 p3, 0x1

    .line 118
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 119
    .line 120
    aput-object p1, p2, p3

    .line 121
    .line 122
    const-string p1, "uid %s cannot set user data for accounts of type: %s"

    .line 123
    .line 124
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance p2, Ljava/lang/SecurityException;

    .line 129
    .line 130
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p2

    .line 134
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    const-string p2, "account is null"

    .line 137
    .line 138
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p1

    .line 142
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 143
    .line 144
    const-string p2, "key is null"

    .line 145
    .line 146
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1
.end method

.method public someUserHasAccount(Landroid/accounts/Account;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->B(II)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAllAccounts()[Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    array-length v3, v2

    .line 24
    const/4 v4, 0x1

    .line 25
    sub-int/2addr v3, v4

    .line 26
    :goto_0
    if-ltz v3, :cond_1

    .line 27
    .line 28
    aget-object v5, v2, v3

    .line 29
    .line 30
    iget-object v5, v5, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$r;->a:Landroid/accounts/Account;

    .line 31
    .line 32
    invoke-virtual {v5, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return v4

    .line 42
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    return p1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 56
    .line 57
    const-string v0, "Only system can check for accounts across users"

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 19

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    const-string v2, "MAccountManagerService"

    .line 9
    .line 10
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "startAddAccountSession: accountType "

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, ", response "

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, ", authTokenType "

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-object/from16 v11, p3

    .line 43
    .line 44
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, ", requiredFeatures "

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, ", expectActivityLaunch "

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move/from16 v6, p5

    .line 65
    .line 66
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, ", caller\'s uid "

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget v3, v3, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v3, ", pid "

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    move-object/from16 v11, p3

    .line 104
    .line 105
    move/from16 v6, p5

    .line 106
    .line 107
    :goto_0
    const-string v1, "response cannot be null"

    .line 108
    .line 109
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    const-string v1, "accountType cannot be null"

    .line 113
    .line 114
    invoke-static {v14, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iget v2, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 122
    .line 123
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 124
    .line 125
    invoke-direct {v15, v1, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccounts(II)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-nez v3, :cond_1

    .line 130
    .line 131
    const/16 v2, 0x64

    .line 132
    .line 133
    :try_start_0
    const-string v3, "User is not allowed to add an account!"

    .line 134
    .line 135
    invoke-interface {v0, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    :catch_0
    invoke-direct {v15, v2, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_1
    invoke-direct {v15, v1, v14, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-nez v3, :cond_2

    .line 147
    .line 148
    const/16 v2, 0x65

    .line 149
    .line 150
    :try_start_1
    const-string v3, "User cannot modify accounts of this type (policy)."

    .line 151
    .line 152
    invoke-interface {v0, v2, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .line 154
    .line 155
    :catch_1
    invoke-direct {v15, v2, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->showCantAddAccount(II)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-nez p6, :cond_3

    .line 164
    .line 165
    new-instance v4, Landroid/os/Bundle;

    .line 166
    .line 167
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 168
    .line 169
    .line 170
    move-object v13, v4

    .line 171
    goto :goto_1

    .line 172
    :cond_3
    move-object/from16 v13, p6

    .line 173
    .line 174
    :goto_1
    const-string v4, "callerUid"

    .line 175
    .line 176
    invoke-virtual {v13, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    const-string v2, "callerPid"

    .line 180
    .line 181
    invoke-virtual {v13, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    const-string v2, "androidPackageName"

    .line 185
    .line 186
    invoke-virtual {v13, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    const/4 v10, 0x0

    .line 190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 191
    .line 192
    .line 193
    move-result-wide v16

    .line 194
    :try_start_2
    invoke-virtual {v15, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    new-instance v18, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$d;

    .line 199
    .line 200
    const/4 v7, 0x0

    .line 201
    const/4 v8, 0x0

    .line 202
    const/4 v9, 0x1

    .line 203
    move-object/from16 v1, v18

    .line 204
    .line 205
    move-object/from16 v2, p0

    .line 206
    .line 207
    move-object/from16 v4, p1

    .line 208
    .line 209
    move-object/from16 v5, p2

    .line 210
    .line 211
    move/from16 v6, p5

    .line 212
    .line 213
    move-object/from16 v11, p3

    .line 214
    .line 215
    move-object/from16 v12, p4

    .line 216
    .line 217
    move-object/from16 v14, p2

    .line 218
    .line 219
    invoke-direct/range {v1 .. v14}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$d;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual/range {v18 .. v18}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    .line 224
    .line 225
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :catchall_0
    move-exception v0

    .line 230
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 231
    .line 232
    .line 233
    throw v0
.end method

.method public startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v11, p2

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "MAccountManagerService"

    .line 7
    .line 8
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "startUpdateCredentialsSession: "

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ", response "

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, ", authTokenType "

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-object/from16 v12, p3

    .line 41
    .line 42
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, ", expectActivityLaunch "

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move/from16 v6, p4

    .line 51
    .line 52
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, ", caller\'s uid "

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iget v3, v3, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, ", pid "

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    move-object/from16 v12, p3

    .line 90
    .line 91
    move/from16 v6, p4

    .line 92
    .line 93
    :goto_0
    if-eqz v0, :cond_2

    .line 94
    .line 95
    if-eqz v11, :cond_1

    .line 96
    .line 97
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget v2, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 102
    .line 103
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 104
    .line 105
    const-string v2, "androidPackageName"

    .line 106
    .line 107
    move-object/from16 v13, p5

    .line 108
    .line 109
    invoke-virtual {v13, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    const/4 v10, 0x0

    .line 113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 114
    .line 115
    .line 116
    move-result-wide v14

    .line 117
    move-object/from16 v9, p0

    .line 118
    .line 119
    :try_start_0
    invoke-virtual {v9, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    new-instance v16, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$e;

    .line 124
    .line 125
    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v7, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 128
    .line 129
    const/4 v8, 0x0

    .line 130
    const/16 v17, 0x1

    .line 131
    .line 132
    move-object/from16 v1, v16

    .line 133
    .line 134
    move-object/from16 v2, p0

    .line 135
    .line 136
    move-object/from16 v4, p1

    .line 137
    .line 138
    move/from16 v6, p4

    .line 139
    .line 140
    move/from16 v9, v17

    .line 141
    .line 142
    move-object/from16 v11, p2

    .line 143
    .line 144
    move-object/from16 v12, p3

    .line 145
    .line 146
    move-object/from16 v13, p5

    .line 147
    .line 148
    invoke-direct/range {v1 .. v13}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$e;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual/range {v16 .. v16}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    .line 154
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 164
    .line 165
    const-string v1, "account is null"

    .line 166
    .line 167
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 172
    .line 173
    const-string v1, "response is null"

    .line 174
    .line 175
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v0
.end method

.method public systemReady()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->loadAllAccounts()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 12
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    move-result-object v0

    .line 13
    iget v1, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 14
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 16
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    move-result-object v0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    throw p1
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 6
    .line 7
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x3e8

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    if-eqz p4, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v11, p2

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "MAccountManagerService"

    .line 7
    .line 8
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->g(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "updateCredentials: "

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ", response "

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, ", authTokenType "

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-object/from16 v12, p3

    .line 41
    .line 42
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, ", expectActivityLaunch "

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move/from16 v6, p4

    .line 51
    .line 52
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, ", caller\'s uid "

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iget v3, v3, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, ", pid "

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v2, v1}, Lcom/xinzhu/overmind/utils/q;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    move-object/from16 v12, p3

    .line 90
    .line 91
    move/from16 v6, p4

    .line 92
    .line 93
    :goto_0
    if-eqz v0, :cond_2

    .line 94
    .line 95
    if-eqz v11, :cond_1

    .line 96
    .line 97
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget v1, v1, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 102
    .line 103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 104
    .line 105
    .line 106
    move-result-wide v14

    .line 107
    move-object/from16 v13, p0

    .line 108
    .line 109
    :try_start_0
    invoke-virtual {v13, v1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getUserAccounts(I)Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    new-instance v16, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;

    .line 114
    .line 115
    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 116
    .line 117
    const/4 v7, 0x1

    .line 118
    iget-object v8, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 119
    .line 120
    const/4 v9, 0x0

    .line 121
    const/4 v10, 0x1

    .line 122
    move-object/from16 v1, v16

    .line 123
    .line 124
    move-object/from16 v2, p0

    .line 125
    .line 126
    move-object/from16 v4, p1

    .line 127
    .line 128
    move/from16 v6, p4

    .line 129
    .line 130
    move-object/from16 v11, p2

    .line 131
    .line 132
    move-object/from16 v12, p3

    .line 133
    .line 134
    move-object/from16 v13, p5

    .line 135
    .line 136
    invoke-direct/range {v1 .. v13}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$q;-><init>(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {v16 .. v16}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$x;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 152
    .line 153
    const-string v1, "account is null"

    .line 154
    .line 155
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 160
    .line 161
    const-string v1, "response is null"

    .line 162
    .line 163
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0
.end method

.method protected writeAuthTokenIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/Map;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->b(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    if-nez p4, :cond_1

    .line 26
    .line 27
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountAuthTokenLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method protected writeUserDataIntoCacheLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/Map;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;->a(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    if-nez p4, :cond_1

    .line 26
    .line 27
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->saveAccountUserDataLocked(Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService$a0;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
