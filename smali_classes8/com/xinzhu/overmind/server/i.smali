.class public Lcom/xinzhu/overmind/server/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/xinzhu/overmind/server/i;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method public static a()Lcom/xinzhu/overmind/server/i;
    .locals 2

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/i;->a:Lcom/xinzhu/overmind/server/i;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/xinzhu/overmind/server/i;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/xinzhu/overmind/server/i;->a:Lcom/xinzhu/overmind/server/i;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/xinzhu/overmind/server/i;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/xinzhu/overmind/server/i;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/xinzhu/overmind/server/i;->a:Lcom/xinzhu/overmind/server/i;

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
    sget-object v0, Lcom/xinzhu/overmind/server/i;->a:Lcom/xinzhu/overmind/server/i;

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/xinzhu/overmind/server/i;->b:Z

    .line 3
    .line 4
    invoke-static {}, Lcom/xinzhu/overmind/a;->f0()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/user/c;->systemReady()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->systemReady()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/am/f;->systemReady()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/xinzhu/overmind/server/am/g;->get()Lcom/xinzhu/overmind/server/am/g;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/am/g;->systemReady()V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/xinzhu/overmind/server/os/i;->get()Lcom/xinzhu/overmind/server/os/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/os/i;->systemReady()V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/i;->get()Lcom/xinzhu/overmind/server/pm/i;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/i;->systemReady()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/xinzhu/overmind/server/os/h;->get()Lcom/xinzhu/overmind/server/os/h;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/os/h;->systemReady()V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->systemReady()V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lna/c;->a()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/4 v2, 0x0

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Ljava/lang/String;

    .line 83
    .line 84
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3, v1, v2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_0

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v4, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 108
    .line 109
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->d()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v3, v1, v4, v2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->installPackageAsUser(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catch_0
    nop

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    sput-boolean v2, Lcom/xinzhu/overmind/server/i;->b:Z

    .line 122
    .line 123
    return-void
.end method
