.class public Lcom/join/mgps/Util/x2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "JIGUANG-TagAliasHelper"

.field public static e:I = 0x1

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:I = 0x5

.field public static final k:I = 0x6

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field private static n:Lcom/join/mgps/Util/x2;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/Util/x2;->b:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/Util/x2$a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/join/mgps/Util/x2$a;-><init>(Lcom/join/mgps/Util/x2;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/Util/x2;->c:Landroid/os/Handler;

    .line 17
    .line 18
    return-void
.end method

.method private a(ILjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "mobileNumber"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/x2;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/k0;->e(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "JIGUANG-TagAliasHelper"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-array p1, v2, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string p2, "no network"

    .line 16
    .line 17
    aput-object p2, p1, v3

    .line 18
    .line 19
    invoke-static {v1, p1}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return v3

    .line 23
    :cond_0
    const/16 v0, 0x1772

    .line 24
    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    const/16 v4, 0x1788

    .line 28
    .line 29
    if-ne p1, v4, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v3

    .line 33
    :cond_2
    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    const-string v5, "need retry"

    .line 36
    .line 37
    aput-object v5, v4, v3

    .line 38
    .line 39
    invoke-static {v1, v4}, Lcom/join/mgps/Util/h1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Landroid/os/Message;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x2

    .line 48
    iput v4, v1, Landroid/os/Message;->what:I

    .line 49
    .line 50
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    .line 52
    iget-object p2, p0, Lcom/join/mgps/Util/x2;->c:Landroid/os/Handler;

    .line 53
    .line 54
    const-wide/32 v4, 0xea60

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 58
    .line 59
    .line 60
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 61
    .line 62
    new-array v1, v2, [Ljava/lang/Object;

    .line 63
    .line 64
    if-ne p1, v0, :cond_3

    .line 65
    .line 66
    const-string p1, "timeout"

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const-string p1, "server internal error\u201d"

    .line 70
    .line 71
    :goto_1
    aput-object p1, v1, v3

    .line 72
    .line 73
    const-string p1, "Failed to set mobile number due to %s. Try again after 60s."

    .line 74
    .line 75
    invoke-static {p2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/join/mgps/Util/x2;->a:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {p1, p2}, Lcom/join/mgps/Util/k0;->j(Ljava/lang/String;Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    return v2
.end method

.method static synthetic b(Lcom/join/mgps/Util/x2;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/x2;->b:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/Util/x2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/x2;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actionType"
        }
    .end annotation

    .line 1
    packed-switch p1, :pswitch_data_0

    const-string p1, "unkonw operation"

    return-object p1

    :pswitch_0
    const-string p1, "check"

    return-object p1

    :pswitch_1
    const-string p1, "get"

    return-object p1

    :pswitch_2
    const-string p1, "clean"

    return-object p1

    :pswitch_3
    const-string p1, "delete"

    return-object p1

    :pswitch_4
    const-string p1, "set"

    return-object p1

    :pswitch_5
    const-string p1, "add"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f()Lcom/join/mgps/Util/x2;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/Util/x2;->n:Lcom/join/mgps/Util/x2;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/join/mgps/Util/x2;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/join/mgps/Util/x2;->n:Lcom/join/mgps/Util/x2;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/join/mgps/Util/x2;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/join/mgps/Util/x2;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/join/mgps/Util/x2;->n:Lcom/join/mgps/Util/x2;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/join/mgps/Util/x2;->n:Lcom/join/mgps/Util/x2;

    .line 25
    .line 26
    return-object v0
.end method

.method private g(ZII)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isAliasAction",
            "actionType",
            "errorCode"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {p0, p2}, Lcom/join/mgps/Util/x2;->e(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    aput-object p2, v1, v2

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "alias"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, " tags"

    .line 19
    .line 20
    :goto_0
    const/4 p2, 0x1

    .line 21
    aput-object p1, v1, p2

    .line 22
    .line 23
    const/16 p1, 0x1772

    .line 24
    .line 25
    if-ne p3, p1, :cond_1

    .line 26
    .line 27
    const-string p1, "timeout"

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const-string p1, "server too busy"

    .line 31
    .line 32
    :goto_1
    const/4 p2, 0x2

    .line 33
    aput-object p1, v1, p2

    .line 34
    .line 35
    const-string p1, "Failed to %s %s due to %s. Try again after 60s."

    .line 36
    .line 37
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method


# virtual methods
.method public d(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/x2;->b:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public h(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "sequence",
            "mobileNumber"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public i(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/join/mgps/Util/x2;->a:Landroid/content/Context;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public j(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequence",
            "tagAliasBean"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/x2;->b:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/x2;->b:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
