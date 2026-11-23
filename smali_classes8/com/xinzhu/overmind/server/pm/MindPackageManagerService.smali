.class public Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;
.super Lcom/xinzhu/overmind/server/pm/e$b;
.source "SourceFile"

# interfaces
.implements Lcom/xinzhu/overmind/server/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MindPackageManagerService"

.field public static sService:Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

.field private static sUserManager:Lcom/xinzhu/overmind/server/user/c;


# instance fields
.field final mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;

.field private mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

.field final mInstallLock:Ljava/lang/Object;

.field private mPackageChangedHandler:Landroid/content/BroadcastReceiver;

.field private mPackageMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/pm/r;",
            ">;"
        }
    .end annotation
.end field

.field final mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xinzhu/overmind/server/pm/MindPackageSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/xinzhu/overmind/server/pm/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sService:Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 7
    .line 8
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/pm/e$b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/server/pm/u;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/u;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mSettings:Lcom/xinzhu/overmind/server/pm/u;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/u;->a:Landroid/util/ArrayMap;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackageMonitors:Ljava/util/List;

    .line 28
    .line 29
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;

    .line 35
    .line 36
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$1;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$1;-><init>(Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackageChangedHandler:Landroid/content/BroadcastReceiver;

    .line 42
    .line 43
    new-instance v0, Lcom/xinzhu/overmind/server/pm/b;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/b;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 49
    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v1, "package"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackageChangedHandler:Landroid/content/BroadcastReceiver;

    .line 75
    .line 76
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;)Lcom/xinzhu/overmind/server/pm/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mSettings:Lcom/xinzhu/overmind/server/pm/u;

    .line 2
    .line 3
    return-object p0
.end method

.method private chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_3

    .line 2
    .line 3
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x1

    .line 8
    const/4 p3, 0x0

    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    if-le p1, p2, :cond_3

    .line 19
    .line 20
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 25
    .line 26
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 31
    .line 32
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 33
    .line 34
    iget v1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 35
    .line 36
    if-ne v0, v1, :cond_2

    .line 37
    .line 38
    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 39
    .line 40
    iget v1, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 41
    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    iget-boolean p1, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 45
    .line 46
    iget-boolean p2, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 47
    .line 48
    if-eq p1, p2, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_2
    :goto_0
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_3
    const/4 p1, 0x0

    .line 66
    return-object p1
.end method

.method static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_1

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, -0x1

    .line 8
    :goto_0
    return v0

    .line 9
    :cond_1
    if-nez p1, :cond_2

    .line 10
    .line 11
    const/4 p0, -0x2

    .line 12
    return p0

    .line 13
    :cond_2
    array-length v1, p0

    .line 14
    array-length v2, p1

    .line 15
    const/4 v3, -0x3

    .line 16
    if-eq v1, v2, :cond_3

    .line 17
    .line 18
    return v3

    .line 19
    :cond_3
    array-length v1, p0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-ne v1, v0, :cond_5

    .line 22
    .line 23
    aget-object p0, p0, v2

    .line 24
    .line 25
    aget-object p1, p1, v2

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_4

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    :cond_4
    return v3

    .line 35
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 38
    .line 39
    .line 40
    array-length v1, p0

    .line 41
    const/4 v4, 0x0

    .line 42
    :goto_1
    if-ge v4, v1, :cond_6

    .line 43
    .line 44
    aget-object v5, p0, v4

    .line 45
    .line 46
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_6
    new-instance p0, Ljava/util/HashSet;

    .line 53
    .line 54
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 55
    .line 56
    .line 57
    array-length v1, p1

    .line 58
    const/4 v4, 0x0

    .line 59
    :goto_2
    if-ge v4, v1, :cond_7

    .line 60
    .line 61
    aget-object v5, p1, v4

    .line 62
    .line 63
    invoke-virtual {p0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_7
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_8

    .line 74
    .line 75
    return v2

    .line 76
    :cond_8
    return v3
.end method

.method static fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sService:Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 2
    .line 3
    return-object v0
.end method

.method private getActivity(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 4

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->updateFlags(II)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/pm/b;->getActivity(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mSettings:Lcom/xinzhu/overmind/server/pm/u;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/u;->a:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object v2

    .line 35
    :cond_0
    invoke-virtual {p1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->C(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v1, p2, p1, p3}, Lcom/xinzhu/overmind/server/pm/q;->e(Lcom/xinzhu/overmind/server/pm/MindPackage$b;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ActivityInfo;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    monitor-exit v0

    .line 44
    return-object p1

    .line 45
    :cond_1
    monitor-exit v0

    .line 46
    return-object v2

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

.method private getInstalledApplicationsListInternal(III)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p3, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {p3, p2}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object p3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 15
    .line 16
    monitor-enter p3

    .line 17
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 49
    .line 50
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 51
    .line 52
    invoke-virtual {v2, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->C(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v3, p1, v2, p2}, Lcom/xinzhu/overmind/server/pm/q;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    monitor-exit p3

    .line 67
    return-object v0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p1
.end method

.method private getPackageUidInternal(Ljava/lang/String;III)I
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    iget-object p4, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 15
    .line 16
    invoke-static {p3, p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->t(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    monitor-exit p2

    .line 21
    return p1

    .line 22
    :cond_0
    monitor-exit p2

    .line 23
    const/4 p1, -0x1

    .line 24
    return p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1
.end method

.method private getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mSettings:Lcom/xinzhu/overmind/server/pm/u;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/pm/u;->e(I)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->k:Landroid/content/pm/PackageParser$SigningDetails;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method

.method private installPackageAsExistLocked(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/entity/pm/InstallResult;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 7
    .line 8
    invoke-virtual {v1, p2}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 15
    .line 16
    invoke-virtual {v1, p2}, Lcom/xinzhu/overmind/server/user/c;->createUser(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object p1, v0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->c:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 28
    .line 29
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, p1, p2}, Lcom/xinzhu/overmind/server/h;->l(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/i;->get()Lcom/xinzhu/overmind/server/pm/i;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, v1, p2}, Lcom/xinzhu/overmind/server/pm/i;->installPackageAsExist(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-gez p1, :cond_1

    .line 45
    .line 46
    const-string p1, "install apk error."

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 54
    .line 55
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    const/4 v2, 0x1

    .line 57
    :try_start_1
    invoke-virtual {v1, v2, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->H(ZI)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->F()Z

    .line 61
    .line 62
    .line 63
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mSettings:Lcom/xinzhu/overmind/server/pm/u;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/u;->j()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->onPackageInstalled(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :catchall_0
    move-exception p2

    .line 74
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    :catchall_1
    move-exception p1

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v1, "install as exist failed "

    .line 83
    .line 84
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {v0, p2}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    return-object v0
.end method

.method private installPackageAsTransferLocked(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->b()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 10
    .line 11
    invoke-direct {v3}, Lcom/xinzhu/overmind/entity/pm/InstallResult;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    sget-object v4, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 15
    .line 16
    invoke-virtual {v4, v0}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    sget-object v4, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Lcom/xinzhu/overmind/server/user/c;->createUser(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 25
    .line 26
    .line 27
    :cond_0
    new-instance v4, Ljava/io/File;

    .line 28
    .line 29
    move-object/from16 v5, p1

    .line 30
    .line 31
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    const-string v0, "installPackageAsTransferLocked apk not found."

    .line 41
    .line 42
    invoke-virtual {v3, v0}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-direct {v1, v5}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->parserApk(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    if-nez v5, :cond_2

    .line 56
    .line 57
    const-string v0, "parser apk error."

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0

    .line 64
    :cond_2
    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 65
    .line 66
    iput-object v6, v3, Lcom/xinzhu/overmind/entity/pm/InstallResult;->c:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v6}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v9, 0x1

    .line 78
    if-eqz v7, :cond_5

    .line 79
    .line 80
    array-length v10, v7

    .line 81
    if-lez v10, :cond_5

    .line 82
    .line 83
    array-length v10, v7

    .line 84
    const/4 v11, 0x0

    .line 85
    const/4 v12, 0x0

    .line 86
    :goto_0
    if-ge v11, v10, :cond_6

    .line 87
    .line 88
    aget-object v13, v7, v11

    .line 89
    .line 90
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    if-eqz v14, :cond_4

    .line 95
    .line 96
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v14

    .line 100
    const-string v15, "arm"

    .line 101
    .line 102
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v14

    .line 106
    if-nez v14, :cond_3

    .line 107
    .line 108
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v13

    .line 112
    const-string v14, "arm64"

    .line 113
    .line 114
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    if-eqz v13, :cond_4

    .line 119
    .line 120
    :cond_3
    const/4 v12, 0x1

    .line 121
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    const/4 v12, 0x0

    .line 125
    :cond_6
    if-nez v12, :cond_8

    .line 126
    .line 127
    sget-object v10, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->TAG:Ljava/lang/String;

    .line 128
    .line 129
    const-string v11, "Ancient legacy package detected."

    .line 130
    .line 131
    invoke-static {v10, v11}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    new-instance v10, Ljava/io/File;

    .line 135
    .line 136
    const-string v11, "arm"

    .line 137
    .line 138
    invoke-direct {v10, v6, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v10}, Lcom/xinzhu/overmind/utils/l;->p(Ljava/io/File;)Z

    .line 142
    .line 143
    .line 144
    if-eqz v7, :cond_8

    .line 145
    .line 146
    array-length v6, v7

    .line 147
    if-lez v6, :cond_8

    .line 148
    .line 149
    array-length v6, v7

    .line 150
    :goto_1
    if-ge v8, v6, :cond_8

    .line 151
    .line 152
    aget-object v11, v7, v8

    .line 153
    .line 154
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    .line 159
    .line 160
    .line 161
    move-result v13

    .line 162
    if-nez v13, :cond_7

    .line 163
    .line 164
    const-string v13, ".so"

    .line 165
    .line 166
    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v13

    .line 170
    if-eqz v13, :cond_7

    .line 171
    .line 172
    sget-object v13, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->TAG:Ljava/lang/String;

    .line 173
    .line 174
    new-instance v14, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v15, "Ancient legacy package detected, transfer lib "

    .line 180
    .line 181
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v14

    .line 191
    invoke-static {v13, v14}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    new-instance v13, Ljava/io/File;

    .line 195
    .line 196
    invoke-direct {v13, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v11, v13}, Lcom/xinzhu/overmind/utils/l;->r(Ljava/io/File;Ljava/io/File;)Z

    .line 200
    .line 201
    .line 202
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_8
    iget-object v6, v1, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 206
    .line 207
    iget-object v7, v3, Lcom/xinzhu/overmind/entity/pm/InstallResult;->c:Ljava/lang/String;

    .line 208
    .line 209
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    check-cast v6, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 214
    .line 215
    if-eqz v6, :cond_a

    .line 216
    .line 217
    invoke-virtual {v6, v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f(I)Z

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    if-eqz v7, :cond_9

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_9
    sget-object v2, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->TAG:Ljava/lang/String;

    .line 225
    .line 226
    const-string v4, "installPackageAsTransfer execute package exist, user not exist."

    .line 227
    .line 228
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_a
    :goto_2
    iget-object v6, v1, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mSettings:Lcom/xinzhu/overmind/server/pm/u;

    .line 233
    .line 234
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 235
    .line 236
    move/from16 v8, p3

    .line 237
    .line 238
    invoke-virtual {v6, v7, v5, v8}, Lcom/xinzhu/overmind/server/pm/u;->d(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    iput-object v2, v6, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 243
    .line 244
    invoke-static {v4}, Lcom/xinzhu/overmind/utils/a;->a(Ljava/io/File;)Ljava/util/HashSet;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    iput-object v2, v6, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->e:Ljava/util/HashSet;

    .line 249
    .line 250
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v2, v4, v0}, Lcom/xinzhu/overmind/server/h;->l(Ljava/lang/String;I)V

    .line 257
    .line 258
    .line 259
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 260
    .line 261
    iget-object v4, v6, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 262
    .line 263
    invoke-virtual {v2, v4}, Lcom/xinzhu/overmind/server/pm/b;->c(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 264
    .line 265
    .line 266
    sget-object v2, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->TAG:Ljava/lang/String;

    .line 267
    .line 268
    const-string v4, "installPackageAsTransfer execute fully."

    .line 269
    .line 270
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    :goto_3
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 274
    .line 275
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 276
    :try_start_1
    invoke-virtual {v6, v9, v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->H(ZI)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->F()Z

    .line 280
    .line 281
    .line 282
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :try_start_2
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mSettings:Lcom/xinzhu/overmind/server/pm/u;

    .line 284
    .line 285
    invoke-virtual {v2}, Lcom/xinzhu/overmind/server/pm/u;->j()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v6, v0}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->onPackageInstalled(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)V

    .line 289
    .line 290
    .line 291
    iget-object v0, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 292
    .line 293
    invoke-static {v0}, Lcom/xinzhu/overmind/a;->Q(Ljava/lang/String;)Ljava/io/File;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-eqz v2, :cond_b

    .line 302
    .line 303
    return-object v3

    .line 304
    :cond_b
    new-instance v2, Ljava/lang/RuntimeException;

    .line 305
    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    const-string v5, "Data transfer failed for package "

    .line 312
    .line 313
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 327
    :catchall_0
    move-exception v0

    .line 328
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 330
    :catchall_1
    move-exception v0

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .line 335
    .line 336
    const-string v4, "install as transfer failed "

    .line 337
    .line 338
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v3, v2}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 356
    .line 357
    .line 358
    return-object v3
.end method

.method private installPackageAsUserLocked(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 9

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/entity/pm/InstallResult;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    sget-object v3, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 10
    .line 11
    invoke-virtual {v3, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    sget-object v3, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 18
    .line 19
    invoke-virtual {v3, p3}, Lcom/xinzhu/overmind/server/user/c;->createUser(I)Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p2, v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_6

    .line 28
    .line 29
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    sget-object v6, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v7, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v8, "Install FLAG_URI_FILE get scheme "

    .line 45
    .line 46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-static {v6, v7}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    const-string v7, "file"

    .line 64
    .line 65
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-nez v7, :cond_1

    .line 70
    .line 71
    const-string v7, "content"

    .line 72
    .line 73
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-nez v7, :cond_1

    .line 78
    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string p3, "Unexpected uri scheme: "

    .line 85
    .line 86
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    :cond_1
    const-string v7, "file"

    .line 102
    .line 103
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_2

    .line 108
    .line 109
    new-instance p1, Ljava/io/File;

    .line 110
    .line 111
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 116
    .line 117
    .line 118
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    new-instance v3, Ljava/io/File;

    .line 123
    .line 124
    invoke-static {}, Lcom/xinzhu/overmind/a;->l()Ljava/io/File;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-direct {v3, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p1, v3}, Lcom/xinzhu/overmind/utils/l;->b(Ljava/io/File;Ljava/io/File;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catchall_0
    move-exception p3

    .line 136
    move-object v2, p1

    .line 137
    move-object p1, p3

    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-static {v3, v5}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-eqz v3, :cond_5

    .line 153
    .line 154
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    if-eqz v5, :cond_5

    .line 159
    .line 160
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    new-instance v5, Ljava/io/File;

    .line 165
    .line 166
    invoke-static {}, Lcom/xinzhu/overmind/a;->l()Ljava/io/File;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-direct {v5, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {p1, v5}, Lcom/xinzhu/overmind/utils/l;->e(Ljava/io/InputStream;Ljava/io/File;)J

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 193
    .line 194
    .line 195
    move-object p1, v2

    .line 196
    move-object v2, v3

    .line 197
    move-object v3, v5

    .line 198
    :goto_0
    :try_start_3
    const-string v5, ".apks"

    .line 199
    .line 200
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-nez v5, :cond_3

    .line 205
    .line 206
    const-string v5, ".xapk"

    .line 207
    .line 208
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_4

    .line 213
    .line 214
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v7, "special split apk archive detected "

    .line 220
    .line 221
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-static {v6, v5}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    new-instance v5, Ljava/io/File;

    .line 235
    .line 236
    invoke-static {}, Lcom/xinzhu/overmind/a;->l()Ljava/io/File;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    const-string v7, "."

    .line 241
    .line 242
    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-static {v2, v6}, Lcom/xinzhu/overmind/utils/l;->y(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    .line 266
    .line 267
    :try_start_4
    invoke-static {v3}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 268
    .line 269
    .line 270
    move-object v3, v5

    .line 271
    :cond_4
    move-object v2, v3

    .line 272
    goto :goto_1

    .line 273
    :catchall_1
    move-exception p1

    .line 274
    move-object v2, v5

    .line 275
    goto/16 :goto_3

    .line 276
    .line 277
    :cond_5
    :try_start_5
    const-string p1, "Unexpected DocumentFile null"

    .line 278
    .line 279
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    return-object p1

    .line 284
    :cond_6
    new-instance v3, Ljava/io/File;

    .line 285
    .line 286
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 287
    .line 288
    .line 289
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 290
    .line 291
    .line 292
    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 293
    move-object v2, p1

    .line 294
    :goto_1
    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->parserApk(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    if-nez p1, :cond_8

    .line 303
    .line 304
    const-string p1, "parser apk error."

    .line 305
    .line 306
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 307
    .line 308
    .line 309
    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 310
    invoke-virtual {p2, v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 311
    .line 312
    .line 313
    move-result p2

    .line 314
    if-eqz p2, :cond_7

    .line 315
    .line 316
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V

    .line 317
    .line 318
    .line 319
    :cond_7
    return-object p1

    .line 320
    :cond_8
    :try_start_8
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 321
    .line 322
    iput-object v3, v0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->c:Ljava/lang/String;

    .line 323
    .line 324
    iget-object v5, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 325
    .line 326
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    if-eqz v3, :cond_9

    .line 331
    .line 332
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 333
    .line 334
    iget-object v5, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 335
    .line 336
    iget-object v6, v0, Lcom/xinzhu/overmind/entity/pm/InstallResult;->c:Ljava/lang/String;

    .line 337
    .line 338
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    check-cast v5, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 343
    .line 344
    iget-object v5, v5, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 345
    .line 346
    invoke-virtual {v3, v5}, Lcom/xinzhu/overmind/server/pm/b;->v(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 347
    .line 348
    .line 349
    :cond_9
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mSettings:Lcom/xinzhu/overmind/server/pm/u;

    .line 350
    .line 351
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v3, v5, p1, p2}, Lcom/xinzhu/overmind/server/pm/u;->c(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/xinzhu/overmind/entity/pm/InstallOption;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/a;->a(Ljava/io/File;)Ljava/util/HashSet;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    iput-object v5, v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->e:Ljava/util/HashSet;

    .line 362
    .line 363
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {p0, v5, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    const/4 v6, 0x1

    .line 370
    if-eqz v5, :cond_a

    .line 371
    .line 372
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v4, p1, p3}, Lcom/xinzhu/overmind/server/h;->l(Ljava/lang/String;I)V

    .line 379
    .line 380
    .line 381
    const/4 v4, 0x1

    .line 382
    :cond_a
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/i;->get()Lcom/xinzhu/overmind/server/pm/i;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    invoke-virtual {p1, v3, p3}, Lcom/xinzhu/overmind/server/pm/i;->installPackageAsUser(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)I

    .line 387
    .line 388
    .line 389
    move-result p1

    .line 390
    if-gez p1, :cond_c

    .line 391
    .line 392
    const-string p1, "install apk error."

    .line 393
    .line 394
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 395
    .line 396
    .line 397
    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 398
    invoke-virtual {p2, v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 399
    .line 400
    .line 401
    move-result p2

    .line 402
    if-eqz p2, :cond_b

    .line 403
    .line 404
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V

    .line 405
    .line 406
    .line 407
    :cond_b
    return-object p1

    .line 408
    :cond_c
    :try_start_9
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 409
    .line 410
    iget-object v5, v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 411
    .line 412
    invoke-virtual {p1, v5}, Lcom/xinzhu/overmind/server/pm/b;->c(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 413
    .line 414
    .line 415
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 416
    .line 417
    monitor-enter p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 418
    :try_start_a
    invoke-virtual {v3, v6, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->H(ZI)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->F()Z

    .line 422
    .line 423
    .line 424
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 425
    :try_start_b
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mSettings:Lcom/xinzhu/overmind/server/pm/u;

    .line 426
    .line 427
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/u;->j()V

    .line 428
    .line 429
    .line 430
    if-eqz v4, :cond_d

    .line 431
    .line 432
    invoke-virtual {p0, v3, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->onPackageChanged(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)V

    .line 433
    .line 434
    .line 435
    goto :goto_2

    .line 436
    :cond_d
    invoke-virtual {p0, v3, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->onPackageInstalled(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 437
    .line 438
    .line 439
    :goto_2
    invoke-virtual {p2, v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    if-eqz p1, :cond_e

    .line 444
    .line 445
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V

    .line 446
    .line 447
    .line 448
    :cond_e
    return-object v0

    .line 449
    :catchall_2
    move-exception p3

    .line 450
    :try_start_c
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 451
    :try_start_d
    throw p3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 452
    :catchall_3
    move-exception p1

    .line 453
    move-object v2, v3

    .line 454
    goto :goto_3

    .line 455
    :catchall_4
    move-exception p1

    .line 456
    :goto_3
    :try_start_e
    new-instance p3, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .line 460
    .line 461
    const-string v3, "install as user locked failed "

    .line 462
    .line 463
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object p3

    .line 477
    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 478
    .line 479
    .line 480
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 481
    .line 482
    .line 483
    if-eqz v2, :cond_f

    .line 484
    .line 485
    invoke-virtual {p2, v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 486
    .line 487
    .line 488
    move-result p1

    .line 489
    if-eqz p1, :cond_f

    .line 490
    .line 491
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V

    .line 492
    .line 493
    .line 494
    :cond_f
    return-object v0

    .line 495
    :catchall_5
    move-exception p1

    .line 496
    if-eqz v2, :cond_10

    .line 497
    .line 498
    invoke-virtual {p2, v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 499
    .line 500
    .line 501
    move-result p2

    .line 502
    if-eqz p2, :cond_10

    .line 503
    .line 504
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V

    .line 505
    .line 506
    .line 507
    :cond_10
    throw p1
.end method

.method private parserApk(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/haunted/android/content/pm/n;->k()Lcom/xinzhu/haunted/android/content/pm/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/xinzhu/haunted/android/content/pm/n;->l(Ljava/io/File;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/content/pm/PackageParser$Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    .line 17
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->z()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {v0, v1, p1}, Lcom/xinzhu/haunted/android/content/pm/n;->j(Ljava/lang/Object;Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/xinzhu/haunted/android/content/pm/n;->i(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object v1

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method

.method private queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    move-object v2, p1

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0, p3, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_1

    .line 41
    .line 42
    new-instance p3, Landroid/content/pm/ResolveInfo;

    .line 43
    .line 44
    invoke-direct {p3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 48
    .line 49
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    return-object p1

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 54
    .line 55
    monitor-enter p1

    .line 56
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 63
    .line 64
    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/b;->t(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    monitor-exit p1

    .line 69
    return-object p2

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 71
    .line 72
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 83
    .line 84
    iget-object v5, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 85
    .line 86
    move-object v3, p2

    .line 87
    move v4, p3

    .line 88
    move v6, p4

    .line 89
    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/pm/b;->u(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    monitor-exit p1

    .line 94
    return-object p2

    .line 95
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    monitor-exit p1

    .line 100
    return-object p2

    .line 101
    :catchall_0
    move-exception p2

    .line 102
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p2
.end method

.method private updateFlags(II)I
    .locals 1

    const/high16 p2, 0xc0000

    and-int v0, p1, p2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    or-int/2addr p1, p2

    :goto_0
    return p1
.end method


# virtual methods
.method public addPackageMonitor(Lcom/xinzhu/overmind/server/pm/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackageMonitors:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public checkUidSignatures(II)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mSettings:Lcom/xinzhu/overmind/server/pm/u;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/pm/u;->e(I)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, -0x4

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return v1

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mSettings:Lcom/xinzhu/overmind/server/pm/u;

    .line 20
    .line 21
    invoke-static {p2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->a(I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {v2, p2}, Lcom/xinzhu/overmind/server/pm/u;->e(I)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return v1

    .line 33
    :cond_1
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:[Landroid/content/pm/Signature;

    .line 36
    .line 37
    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 38
    .line 39
    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:[Landroid/content/pm/Signature;

    .line 40
    .line 41
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    monitor-exit v0

    .line 46
    return p1

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

.method public deleteUser(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v2, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->uninstallPackageAsUser(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;->a(I)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    :catchall_1
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void
.end method

.method public doTransferInstalls()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "doTransferInstalls"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/xinzhu/datatransfer/a;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public doTransferInstallsOnlyForMainPackage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "doTransferInstallsOnlyForMainPackage"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/xinzhu/datatransfer/a;->b()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 4

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Lcom/xinzhu/overmind/server/pm/b;->getActivity(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    .line 37
    .line 38
    invoke-virtual {p0, v3, p2, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->C(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v2, p2, p1, p3}, Lcom/xinzhu/overmind/server/pm/q;->e(Lcom/xinzhu/overmind/server/pm/MindPackage$b;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ActivityInfo;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    monitor-exit v0

    .line 54
    return-object p1

    .line 55
    :cond_2
    :goto_0
    monitor-exit v0

    .line 56
    return-object v1

    .line 57
    :cond_3
    monitor-exit v0

    .line 58
    return-object v1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1
.end method

.method public getAppId(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return p1

    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    const/4 p1, -0x1

    .line 20
    return p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public getAppResources(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/xinzhu/overmind/server/pm/q;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lu8/b;->e()Lu8/b;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lu8/b;->a(Ljava/lang/String;)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Landroid/content/res/Resources;

    .line 28
    .line 29
    iget-object p2, p2, Lu8/b;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p2, Landroid/content/res/AssetManager;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p2, v1, p1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/xinzhu/overmind/utils/wrappers/ObjectsWrapper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p1, v0}, Lcom/xinzhu/overmind/utils/wrappers/ObjectsWrapper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->updateFlags(II)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object v1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 50
    .line 51
    invoke-virtual {p1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->C(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v1, p2, p1, p3}, Lcom/xinzhu/overmind/server/pm/q;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    monitor-exit v0

    .line 60
    return-object p1

    .line 61
    :cond_2
    monitor-exit v0

    .line 62
    return-object v1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p1

    .line 66
    :cond_3
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 75
    .line 76
    .line 77
    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    return-object p1

    .line 79
    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    return-object v1
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;->b(Landroid/content/ComponentName;I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    monitor-exit v0

    .line 11
    return p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getInstalledApplicationsListInternal(III)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 52
    .line 53
    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 54
    .line 55
    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, v3, p1, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    .line 71
    .line 72
    monitor-exit v0

    .line 73
    return-object p1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p1
.end method

.method public getInstalledPackagesAsUser(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/entity/pm/InstalledPackage;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f(I)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    new-instance v4, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;

    .line 51
    .line 52
    invoke-direct {v4}, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;-><init>()V

    .line 53
    .line 54
    .line 55
    iput p1, v4, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->b:I

    .line 56
    .line 57
    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 58
    .line 59
    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v3, v4, Lcom/xinzhu/overmind/entity/pm/InstalledPackage;->c:Ljava/lang/String;

    .line 62
    .line 63
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    monitor-exit v0

    .line 68
    return-object v1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p1
.end method

.method public getMindPackageSettings(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getMindPackageSettingsInternal(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v1, v2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    .line 21
    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 26
    .line 27
    iput-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-object v0
.end method

.method public getMindPackageSettingsInternal(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 8
    .line 9
    return-object p1
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->updateFlags(II)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->C(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {p1, p2, v1, p3}, Lcom/xinzhu/overmind/server/pm/q;->i(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/PackageInfo;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    monitor-exit v0

    .line 58
    return-object p1

    .line 59
    :cond_2
    monitor-exit v0

    .line 60
    return-object v1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p1

    .line 64
    :cond_3
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    return-object p1

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    return-object v1
.end method

.method public getPackageUid(Ljava/lang/String;II)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const-string v0, "android"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/os/BinderHelper;->b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v0, v0, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 37
    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getPackageUidInternal(Ljava/lang/String;III)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_2
    :goto_0
    const/16 p1, 0x3e8

    .line 44
    .line 45
    return p1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 31
    .line 32
    iget v4, v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 33
    .line 34
    invoke-static {v0, v4}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->t(II)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ne v4, p1, :cond_0

    .line 39
    .line 40
    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 41
    .line 42
    iget-object v3, v3, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    return-object p1

    .line 56
    :cond_2
    const/4 p1, 0x0

    .line 57
    new-array p1, p1, [Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, [Ljava/lang/String;

    .line 64
    .line 65
    return-object p1
.end method

.method public getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .locals 4

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Lcom/xinzhu/overmind/server/pm/b;->g(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    .line 37
    .line 38
    invoke-virtual {p0, v3, p2, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->C(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v2, p2, p1, p3}, Lcom/xinzhu/overmind/server/pm/q;->k(Lcom/xinzhu/overmind/server/pm/MindPackage$g;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ProviderInfo;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    monitor-exit v0

    .line 54
    return-object p1

    .line 55
    :cond_2
    :goto_0
    monitor-exit v0

    .line 56
    return-object v1

    .line 57
    :cond_3
    monitor-exit v0

    .line 58
    return-object v1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 4

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Lcom/xinzhu/overmind/server/pm/b;->h(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    .line 37
    .line 38
    invoke-virtual {p0, v3, p2, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->C(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v2, p2, p1, p3}, Lcom/xinzhu/overmind/server/pm/q;->e(Lcom/xinzhu/overmind/server/pm/MindPackage$b;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ActivityInfo;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    monitor-exit v0

    .line 54
    return-object p1

    .line 55
    :cond_2
    :goto_0
    monitor-exit v0

    .line 56
    return-object v1

    .line 57
    :cond_3
    monitor-exit v0

    .line 58
    return-object v1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 4

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Lcom/xinzhu/overmind/server/pm/b;->i(Landroid/content/ComponentName;)Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$h;->f:Landroid/content/pm/ServiceInfo;

    .line 37
    .line 38
    invoke-virtual {p0, v3, p2, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->C(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v2, p2, p1, p3}, Lcom/xinzhu/overmind/server/pm/q;->l(Lcom/xinzhu/overmind/server/pm/MindPackage$h;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ServiceInfo;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    monitor-exit v0

    .line 54
    return-object p1

    .line 55
    :cond_2
    :goto_0
    monitor-exit v0

    .line 56
    return-object v1

    .line 57
    :cond_3
    monitor-exit v0

    .line 58
    return-object v1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1
.end method

.method getSettings()Lcom/xinzhu/overmind/server/pm/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mSettings:Lcom/xinzhu/overmind/server/pm/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasSignatureCapability(III)Z
    .locals 7

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    array-length v3, v0

    .line 18
    if-lez v3, :cond_2

    .line 19
    .line 20
    array-length v3, v0

    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    if-ge v4, v3, :cond_2

    .line 23
    .line 24
    aget-object v5, v0, v4

    .line 25
    .line 26
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-nez v6, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    return v2

    .line 51
    :cond_2
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    if-nez p3, :cond_3

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    :cond_3
    const/4 v1, 0x1

    .line 78
    :cond_4
    return v1

    .line 79
    :cond_5
    if-eq p1, p2, :cond_6

    .line 80
    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->checkUidSignatures(II)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_7

    .line 86
    .line 87
    :cond_6
    const/4 v1, 0x1

    .line 88
    :cond_7
    return v1
.end method

.method public installPackageAsExist(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v3, "installPackageAsExist "

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, " "

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->installPackageAsExistLocked(Ljava/lang/String;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    monitor-exit v0

    .line 39
    return-object p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p1
.end method

.method public installPackageAsTransfer(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 3

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "installPackageAsTransfer "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->installPackageAsTransferLocked(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    monitor-exit v0

    .line 47
    return-object p1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p1
.end method

.method public installPackageAsUser(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, -0x1

    .line 5
    if-ne p3, v1, :cond_4

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-virtual {p3}, Lcom/xinzhu/overmind/server/user/c;->getUsers()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    if-eqz p3, :cond_3

    .line 16
    .line 17
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p3}, Lcom/xinzhu/overmind/server/user/c;->getUsers()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/server/user/c;->get()Lcom/xinzhu/overmind/server/user/c;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {p3}, Lcom/xinzhu/overmind/server/user/c;->getUsers()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    const/4 v1, 0x0

    .line 45
    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;

    .line 56
    .line 57
    iget v1, v1, Lcom/xinzhu/overmind/server/user/MindUserInfo;->b:I

    .line 58
    .line 59
    invoke-direct {p0, p1, p2, v1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->installPackageAsUserLocked(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-boolean v2, v1, Lcom/xinzhu/overmind/entity/pm/InstallResult;->b:Z

    .line 64
    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    monitor-exit v0

    .line 68
    return-object v1

    .line 69
    :cond_2
    monitor-exit v0

    .line 70
    return-object v1

    .line 71
    :cond_3
    :goto_0
    new-instance p1, Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 72
    .line 73
    invoke-direct {p1}, Lcom/xinzhu/overmind/entity/pm/InstallResult;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string p2, "no user exist"

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/xinzhu/overmind/entity/pm/InstallResult;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    monitor-exit v0

    .line 83
    return-object p1

    .line 84
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->installPackageAsUserLocked(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    monitor-exit v0

    .line 89
    return-object p1

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p1
.end method

.method public isComponentEnabled(Landroid/content/pm/ComponentInfo;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;

    .line 5
    .line 6
    new-instance v2, Landroid/content/ComponentName;

    .line 7
    .line 8
    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;->b(Landroid/content/ComponentName;I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    if-eq p2, p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    :cond_0
    return p1

    .line 27
    :cond_1
    iget-boolean p1, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 28
    .line 29
    return p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method

.method public isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z
    .locals 0

    .line 1
    and-int/lit16 p2, p2, 0x200

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isComponentEnabled(Landroid/content/pm/ComponentInfo;I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public isInstalled(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return v1

    .line 26
    :cond_1
    invoke-virtual {p1, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f(I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    monitor-exit v0

    .line 31
    return p1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method

.method onPackageChanged(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/xinzhu/overmind/Overmind;->ifDisablePluginPackageAutoManage()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->M()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-static {v0, p2}, Lcom/xinzhu/overmind/plugin/b;->q(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->p()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackageMonitors:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/xinzhu/overmind/server/pm/r;

    .line 44
    .line 45
    invoke-interface {v1, v0, p2}, Lcom/xinzhu/overmind/server/pm/r;->c(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    sget-object p1, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v2, "onPackageChanged: "

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ", userId: "

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/utils/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method onPackageInstalled(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/xinzhu/overmind/Overmind;->ifDisablePluginPackageAutoManage()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->M()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-static {v0, p2}, Lcom/xinzhu/overmind/plugin/b;->q(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->p()V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackageMonitors:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/xinzhu/overmind/server/pm/r;

    .line 61
    .line 62
    invoke-interface {v1, v0, p2}, Lcom/xinzhu/overmind/server/pm/r;->b(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    sget-object p1, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "onPackageInstalled: "

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, ", userId: "

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/utils/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    const-string p1, "com.tencent.mm"

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/xinzhu/overmind/Overmind;->preStartMM()V

    .line 109
    .line 110
    .line 111
    :cond_4
    return-void
.end method

.method onPackageUninstalled(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->ifDisablePluginPackageAutoManage()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->p()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackageMonitors:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/xinzhu/overmind/server/pm/r;

    .line 31
    .line 32
    invoke-interface {v1, p1, p2}, Lcom/xinzhu/overmind/server/pm/r;->a(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v2, "onPackageUninstalled: "

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, ", userId: "

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v0, p1}, Lcom/xinzhu/overmind/utils/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public queryContentProviders(Ljava/lang/String;III)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {p2, p4}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return-object p2

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/xinzhu/overmind/server/pm/b;->q(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    return-object p2
.end method

.method public queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_1
    move-object v3, p1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    new-instance p1, Ljava/util/ArrayList;

    .line 42
    .line 43
    const/4 p3, 0x1

    .line 44
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1, p2, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    new-instance p2, Landroid/content/pm/ResolveInfo;

    .line 60
    .line 61
    invoke-direct {p2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 65
    .line 66
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_2
    return-object p1

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 71
    .line 72
    monitor-enter p1

    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 76
    .line 77
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 88
    .line 89
    iget-object v6, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    .line 90
    .line 91
    move-object v4, p3

    .line 92
    move v5, p2

    .line 93
    move v7, p4

    .line 94
    invoke-virtual/range {v2 .. v7}, Lcom/xinzhu/overmind/server/pm/b;->l(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    goto :goto_0

    .line 99
    :cond_4
    const/4 p2, 0x0

    .line 100
    :goto_0
    if-eqz p2, :cond_5

    .line 101
    .line 102
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    if-nez p3, :cond_6

    .line 107
    .line 108
    :cond_5
    if-nez p2, :cond_6

    .line 109
    .line 110
    new-instance p2, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    :cond_6
    monitor-exit p1

    .line 116
    return-object p2

    .line 117
    :cond_7
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 118
    .line 119
    invoke-virtual {v0, v3, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/b;->m(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    if-eqz p2, :cond_8

    .line 124
    .line 125
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    if-nez p3, :cond_9

    .line 130
    .line 131
    :cond_8
    if-nez p2, :cond_9

    .line 132
    .line 133
    new-instance p2, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    :cond_9
    monitor-exit p1

    .line 139
    return-object p2

    .line 140
    :catchall_0
    move-exception p2

    .line 141
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    throw p2
.end method

.method public queryIntentBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_1
    move-object v2, p1

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    new-instance p1, Ljava/util/ArrayList;

    .line 38
    .line 39
    const/4 p3, 0x1

    .line 40
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, p2, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    new-instance p2, Landroid/content/pm/ResolveInfo;

    .line 56
    .line 57
    invoke-direct {p2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 61
    .line 62
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    return-object p1

    .line 66
    :cond_3
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 67
    .line 68
    monitor-enter p1

    .line 69
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 76
    .line 77
    invoke-virtual {v0, v2, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/b;->r(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    monitor-exit p1

    .line 82
    return-object p2

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 84
    .line 85
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 96
    .line 97
    iget-object v5, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    .line 98
    .line 99
    move-object v3, p3

    .line 100
    move v4, p2

    .line 101
    move v6, p4

    .line 102
    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/pm/b;->s(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    monitor-exit p1

    .line 107
    return-object p2

    .line 108
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    monitor-exit p1

    .line 113
    return-object p2

    .line 114
    :catchall_0
    move-exception p2

    .line 115
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p2
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_1
    move-object v2, p1

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    new-instance p1, Ljava/util/ArrayList;

    .line 38
    .line 39
    const/4 p3, 0x1

    .line 40
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, p2, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    new-instance p2, Landroid/content/pm/ResolveInfo;

    .line 56
    .line 57
    invoke-direct {p2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p3, p2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 61
    .line 62
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    return-object p1

    .line 66
    :cond_3
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 67
    .line 68
    monitor-enter p1

    .line 69
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 76
    .line 77
    invoke-virtual {v0, v2, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/b;->o(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    monitor-exit p1

    .line 82
    return-object p2

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 84
    .line 85
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 96
    .line 97
    iget-object v5, v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    .line 98
    .line 99
    move-object v3, p3

    .line 100
    move v4, p2

    .line 101
    move v6, p4

    .line 102
    invoke-virtual/range {v1 .. v6}, Lcom/xinzhu/overmind/server/pm/b;->p(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    monitor-exit p1

    .line 107
    return-object p2

    .line 108
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    monitor-exit p1

    .line 113
    return-object p2

    .line 114
    :catchall_0
    move-exception p2

    .line 115
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p2
.end method

.method public queryIntentServices(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public removePackageMonitor(Lcom/xinzhu/overmind/server/pm/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackageMonitors:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/b;->n(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->chooseBestActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/ResolveInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->sUserManager:Lcom/xinzhu/overmind/server/user/c;

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Lcom/xinzhu/overmind/server/user/c;->exists(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/4 p3, 0x1

    .line 22
    if-lt p2, p3, :cond_1

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_1
    return-object v1
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentEnabledSettings:Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$a;->e(Landroid/content/ComponentName;III)V

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

.method public setMindPackageRunWithPlugin(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->I(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->F()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :try_start_1
    iget-object p2, v1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-virtual {p2, v1}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->L(Ljava/lang/String;)Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p2}, Lcom/xinzhu/overmind/utils/l;->j(Ljava/io/File;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/g;->a(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/plugin/b;->q(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw p1
.end method

.method public systemReady()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mSettings:Lcom/xinzhu/overmind/server/pm/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/u;->j()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Lcom/xinzhu/overmind/server/pm/b;->c(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3, p1}, Lcom/xinzhu/overmind/server/h;->k(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->y()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/i;->get()Lcom/xinzhu/overmind/server/pm/i;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    const/4 v7, 0x1

    .line 56
    invoke-virtual {v5, v2, v7, v6}, Lcom/xinzhu/overmind/server/pm/i;->uninstallPackageAsUser(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;ZI)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-gez v5, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {p0, p1, v4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->onPackageUninstalled(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 72
    .line 73
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 77
    .line 78
    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Lcom/xinzhu/overmind/server/pm/b;->v(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mSettings:Lcom/xinzhu/overmind/server/pm/u;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/u;->j()V

    .line 86
    .line 87
    .line 88
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 93
    :try_start_6
    throw p1

    .line 94
    :catchall_1
    move-exception p1

    .line 95
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 96
    throw p1
.end method

.method public uninstallPackageAsUser(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mInstallLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isInstalled(Ljava/lang/String;I)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 27
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_6
    invoke-virtual {v2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->A()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x1

    .line 38
    if-gt v3, v4, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v4, 0x0

    .line 42
    :goto_0
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3, p1, p2}, Lcom/xinzhu/overmind/server/h;->l(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/i;->get()Lcom/xinzhu/overmind/server/pm/i;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3, v2, v4, p2}, Lcom/xinzhu/overmind/server/pm/i;->uninstallPackageAsUser(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;ZI)I

    .line 54
    .line 55
    .line 56
    if-eqz v4, :cond_3

    .line 57
    .line 58
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mPackages:Ljava/util/Map;

    .line 59
    .line 60
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mComponentResolver:Lcom/xinzhu/overmind/server/pm/b;

    .line 64
    .line 65
    iget-object v2, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Lcom/xinzhu/overmind/server/pm/b;->v(Lcom/xinzhu/overmind/server/pm/MindPackage;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->mSettings:Lcom/xinzhu/overmind/server/pm/u;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/xinzhu/overmind/server/pm/u;->j()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {v2, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->D(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->F()Z

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->onPackageUninstalled(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 86
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 87
    goto :goto_2

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 90
    :try_start_9
    throw p1

    .line 91
    :catchall_1
    move-exception p1

    .line 92
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 93
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 94
    :catchall_2
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    :goto_2
    return-void
.end method
