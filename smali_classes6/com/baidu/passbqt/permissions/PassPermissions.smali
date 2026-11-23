.class public Lcom/baidu/passbqt/permissions/PassPermissions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/passbqt/NoProguard;


# static fields
.field public static final a:Ljava/lang/String; = "PassPermissions"

.field private static b:Lcom/baidu/passbqt/permissions/PassPermissions;


# instance fields
.field private c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

.field private d:Lcom/baidu/passbqt/permissions/PermissionsCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized a()Lcom/baidu/passbqt/permissions/PassPermissions;
    .locals 2

    const-class v0, Lcom/baidu/passbqt/permissions/PassPermissions;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/baidu/passbqt/permissions/PassPermissions;->b:Lcom/baidu/passbqt/permissions/PassPermissions;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/baidu/passbqt/permissions/PassPermissions;

    invoke-direct {v1}, Lcom/baidu/passbqt/permissions/PassPermissions;-><init>()V

    sput-object v1, Lcom/baidu/passbqt/permissions/PassPermissions;->b:Lcom/baidu/passbqt/permissions/PassPermissions;

    .line 4
    :cond_0
    sget-object v1, Lcom/baidu/passbqt/permissions/PassPermissions;->b:Lcom/baidu/passbqt/permissions/PassPermissions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/baidu/passbqt/permissions/PassPermissions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/passbqt/permissions/PassPermissions;->d()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 20
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    invoke-static {p1, p0}, Landroidx/core/app/q;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    if-ge v1, v3, :cond_1

    .line 21
    invoke-virtual {p1, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return v0
.end method

.method private d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/baidu/passbqt/permissions/PassPermissions;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/baidu/passbqt/permissions/PassPermissions;->d:Lcom/baidu/passbqt/permissions/PermissionsCallback;

    .line 5
    .line 6
    sput-object v0, Lcom/baidu/passbqt/permissions/PassPermissions;->b:Lcom/baidu/passbqt/permissions/PassPermissions;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/passbqt/permissions/PermissionsDTO;Lcom/baidu/passbqt/permissions/PermissionsCallback;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 5
    iget-object v0, p1, Lcom/baidu/passbqt/permissions/PermissionsDTO;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/baidu/passbqt/permissions/PermissionsDTO;->b:[Ljava/lang/String;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 6
    iput-object p1, p0, Lcom/baidu/passbqt/permissions/PassPermissions;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 7
    new-instance v0, Lcom/baidu/passbqt/permissions/PassPermissions$1;

    invoke-direct {v0, p0, p2}, Lcom/baidu/passbqt/permissions/PassPermissions$1;-><init>(Lcom/baidu/passbqt/permissions/PassPermissions;Lcom/baidu/passbqt/permissions/PermissionsCallback;)V

    iput-object v0, p0, Lcom/baidu/passbqt/permissions/PassPermissions;->d:Lcom/baidu/passbqt/permissions/PermissionsCallback;

    .line 8
    iget-object p2, p1, Lcom/baidu/passbqt/permissions/PermissionsDTO;->b:[Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/baidu/passbqt/permissions/PassPermissions;->a([Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PassPermissions;->d:Lcom/baidu/passbqt/permissions/PermissionsCallback;

    invoke-virtual {p1}, Lcom/baidu/passbqt/permissions/PermissionsCallback;->a()V

    return-void

    .line 10
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p2, v0, :cond_1

    .line 11
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PassPermissions;->d:Lcom/baidu/passbqt/permissions/PermissionsCallback;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/baidu/passbqt/permissions/PermissionsCallback;->a(I)V

    return-void

    .line 12
    :cond_1
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p1, Lcom/baidu/passbqt/permissions/PermissionsDTO;->a:Landroid/content/Context;

    const-class v1, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    iget-object v0, p1, Lcom/baidu/passbqt/permissions/PermissionsDTO;->a:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x10000000

    .line 15
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    iget-object p1, p1, Lcom/baidu/passbqt/permissions/PermissionsDTO;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params is error"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method varargs a([Ljava/lang/String;)Z
    .locals 5

    .line 18
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 19
    iget-object v4, p0, Lcom/baidu/passbqt/permissions/PassPermissions;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    iget-object v4, v4, Lcom/baidu/passbqt/permissions/PermissionsDTO;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/baidu/passbqt/permissions/PassPermissions;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public b()Lcom/baidu/passbqt/permissions/PermissionsDTO;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/passbqt/permissions/PassPermissions;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/baidu/passbqt/permissions/PermissionsCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/passbqt/permissions/PassPermissions;->d:Lcom/baidu/passbqt/permissions/PermissionsCallback;

    .line 2
    .line 3
    return-object v0
.end method
