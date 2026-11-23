.class public final Lcom/join/mgps/receiver/BootReceiver_;
.super Lcom/join/mgps/receiver/BootReceiver;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final b:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED"

.field public static final c:Ljava/lang/String; = "android.intent.action.PACKAGE_FULLY_REMOVED"

.field public static final d:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field public static final e:Ljava/lang/String; = "android.intent.action.INSTALL_FAILURE"

.field public static final f:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/receiver/BootReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g(Landroid/content/Context;)V
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
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/receiver/BootReceiver_;->g(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lcom/join/mgps/receiver/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/receiver/BootReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/receiver/BootReceiver;->e(Landroid/content/Context;Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/receiver/BootReceiver;->f(Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/receiver/BootReceiver;->d(Landroid/content/Context;Landroid/content/Intent;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    const-string v1, "android.intent.action.INSTALL_FAILURE"

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/receiver/BootReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/receiver/BootReceiver;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    return-void
.end method
