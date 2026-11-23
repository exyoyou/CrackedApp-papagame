.class public Lcom/papa91/paay/PayCenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_LOGIN_SUCCESS:Ljava/lang/String; = "com.join.android.app.mgsim.broadcast.action_login_success"

.field public static final ACTION_UPDATE_USER_PURCHASE_INFO:Ljava/lang/String; = "com.join.android.app.mgsim.broadcast.action_update_user_purchase_info"

.field private static final TAG:Ljava/lang/String; = "PayCenter"

.field private static mContext:Landroid/content/Context; = null

.field private static mGson:Lcom/google/gson/Gson; = null

.field private static mHandler:Landroid/os/Handler; = null

.field private static payListener:Lcom/papa91/paay/PayListener; = null

.field private static payResponse:Lcom/papa91/paay/PayResponse; = null

.field private static final root:Ljava/lang/String; = "http://payv1.papa91.com"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa91/paay/PayCenter;->mGson:Lcom/google/gson/Gson;

    .line 7
    .line 8
    new-instance v0, Lcom/papa91/paay/PayCenter$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/papa91/paay/PayCenter$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/papa91/paay/PayCenter;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000()Lcom/papa91/paay/PayResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/paay/PayCenter;->payResponse:Lcom/papa91/paay/PayResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$002(Lcom/papa91/paay/PayResponse;)Lcom/papa91/paay/PayResponse;
    .locals 0

    .line 1
    sput-object p0, Lcom/papa91/paay/PayCenter;->payResponse:Lcom/papa91/paay/PayResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100()Lcom/papa91/paay/PayListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$200()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/paay/PayCenter;->mGson:Lcom/google/gson/Gson;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/paay/PayCenter;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static buyCheat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 0

    .line 1
    sput-object p4, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 2
    .line 3
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    const-string p0, "0"

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$5;

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/paay/PayCenter$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static buyCoin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 0

    .line 1
    sput-object p4, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 2
    .line 3
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    const-string p0, "0"

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$7;

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/paay/PayCenter$7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static buySP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 0

    .line 1
    sput-object p4, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 2
    .line 3
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    const-string p0, "0"

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$6;

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/paay/PayCenter$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static inquiryCheat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 0

    .line 1
    sput-object p4, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 2
    .line 3
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    const-string p0, "0"

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$2;

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/paay/PayCenter$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static inquiryCoinInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 0

    .line 1
    sput-object p4, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 2
    .line 3
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    const-string p0, "0"

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$4;

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/paay/PayCenter$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static inquirySP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 0

    .line 1
    sput-object p4, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 2
    .line 3
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    const-string p0, "0"

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$3;

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/paay/PayCenter$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static lobbyPlayCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 6

    .line 1
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sput-object p6, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    const-string p0, "0"

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$9;

    .line 25
    .line 26
    move-object v0, p0

    .line 27
    move-object v1, p1

    .line 28
    move-object v2, p3

    .line 29
    move-object v3, p2

    .line 30
    move-object v4, p4

    .line 31
    move-object v5, p5

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/papa91/paay/PayCenter$9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static redirectLogin()V
    .locals 4

    .line 1
    new-instance v0, Lcom/papa91/paay/PayResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa91/paay/PayResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa91/paay/PayCenter;->payResponse:Lcom/papa91/paay/PayResponse;

    .line 7
    .line 8
    const/16 v1, 0x2bd

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/papa91/paay/PayResponse;->setError(I)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 14
    .line 15
    sget-object v1, Lcom/papa91/paay/PayCenter;->payResponse:Lcom/papa91/paay/PayResponse;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/papa91/paay/PayListener;->onResult(Lcom/papa91/paay/PayResponse;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "intentFrom"

    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroid/content/ComponentName;

    .line 32
    .line 33
    const-string v2, "com.join.android.app.mgsim"

    .line 34
    .line 35
    const-string v3, "com.join.mgps.activity.MyAccountCenterActivity_"

    .line 36
    .line 37
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    const-string v1, "android.intent.action.VIEW"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    sget-object v1, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static startLobby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
    .locals 6

    .line 1
    sput-object p0, Lcom/papa91/paay/PayCenter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sput-object p6, Lcom/papa91/paay/PayCenter;->payListener:Lcom/papa91/paay/PayListener;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    const-string p0, "0"

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/papa91/paay/PayCenter$8;

    .line 25
    .line 26
    move-object v0, p0

    .line 27
    move-object v1, p1

    .line 28
    move-object v2, p3

    .line 29
    move-object v3, p2

    .line 30
    move-object v4, p4

    .line 31
    move-object v5, p5

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/papa91/paay/PayCenter$8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    :goto_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->redirectLogin()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
