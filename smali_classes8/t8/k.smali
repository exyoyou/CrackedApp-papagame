.class public final Lt8/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "k"

.field public static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "android.content.IIntentReceiver"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/d;->b(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lt8/k;->c:Ljava/lang/Class;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lt8/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lt8/k;->e:Z

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt8/k;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)Z
    .locals 1

    .line 1
    sget-object p1, Lt8/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x1

    .line 8
    if-nez p1, :cond_2

    .line 9
    .line 10
    sget-boolean p1, Lt8/k;->e:Z

    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    sget-object p1, Lt8/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    sget-object p4, Lt8/k;->c:Ljava/lang/Class;

    .line 18
    .line 19
    const/4 p5, 0x7

    .line 20
    new-array p5, p5, [Ljava/lang/Object;

    .line 21
    .line 22
    const-class p6, Landroid/content/Intent;

    .line 23
    .line 24
    aput-object p6, p5, p3

    .line 25
    .line 26
    sget-object p6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    aput-object p6, p5, p2

    .line 29
    .line 30
    const/4 p7, 0x2

    .line 31
    const-class v0, Ljava/lang/String;

    .line 32
    .line 33
    aput-object v0, p5, p7

    .line 34
    .line 35
    const/4 p7, 0x3

    .line 36
    const-class v0, Landroid/os/Bundle;

    .line 37
    .line 38
    aput-object v0, p5, p7

    .line 39
    .line 40
    sget-object p7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    const/4 v0, 0x4

    .line 43
    aput-object p7, p5, v0

    .line 44
    .line 45
    const/4 v0, 0x5

    .line 46
    aput-object p7, p5, v0

    .line 47
    .line 48
    const/4 p7, 0x6

    .line 49
    aput-object p6, p5, p7

    .line 50
    .line 51
    const-string p6, "performReceive"

    .line 52
    .line 53
    invoke-static {p4, p6, p5}, Lcom/xinzhu/haunted/d;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    .line 54
    .line 55
    .line 56
    move-result-object p4

    .line 57
    const/4 p5, 0x0

    .line 58
    invoke-static {p1, p5, p4}, Landroidx/lifecycle/i;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    sput-boolean p2, Lt8/k;->e:Z

    .line 62
    .line 63
    sget-object p1, Lt8/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-nez p1, :cond_0

    .line 70
    .line 71
    return p3

    .line 72
    :cond_0
    return p2

    .line 73
    :cond_1
    return p3

    .line 74
    :cond_2
    return p2
.end method

.method public b(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 4

    .line 1
    invoke-virtual/range {p0 .. p7}, Lt8/k;->a(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v0, Lt8/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/reflect/Method;

    .line 15
    .line 16
    iget-object v1, p0, Lt8/k;->a:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v2, 0x7

    .line 19
    new-array v2, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object p1, v2, v3

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x1

    .line 29
    aput-object p1, v2, p2

    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    aput-object p3, v2, p1

    .line 33
    .line 34
    const/4 p1, 0x3

    .line 35
    aput-object p4, v2, p1

    .line 36
    .line 37
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 p2, 0x4

    .line 42
    aput-object p1, v2, p2

    .line 43
    .line 44
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 p2, 0x5

    .line 49
    aput-object p1, v2, p2

    .line 50
    .line 51
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/4 p2, 0x6

    .line 56
    aput-object p1, v2, p2

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_1
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method
