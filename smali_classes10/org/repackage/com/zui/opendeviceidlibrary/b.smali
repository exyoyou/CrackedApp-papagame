.class public Lorg/repackage/com/zui/opendeviceidlibrary/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/repackage/com/zui/opendeviceidlibrary/b$b;
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String; = "OpenDeviceId library"

.field private static f:Z


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lorg/repackage/com/zui/deviceidservice/a;

.field private c:Landroid/content/ServiceConnection;

.field private d:Lorg/repackage/com/zui/opendeviceidlibrary/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->a:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->d:Lorg/repackage/com/zui/opendeviceidlibrary/b$b;

    .line 8
    .line 9
    return-void
.end method

.method static synthetic c(Lorg/repackage/com/zui/opendeviceidlibrary/b;Lorg/repackage/com/zui/deviceidservice/a;)Lorg/repackage/com/zui/deviceidservice/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->b:Lorg/repackage/com/zui/deviceidservice/a;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Lorg/repackage/com/zui/opendeviceidlibrary/b;)Lorg/repackage/com/zui/opendeviceidlibrary/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->d:Lorg/repackage/com/zui/opendeviceidlibrary/b$b;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method static synthetic f(Lorg/repackage/com/zui/opendeviceidlibrary/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lorg/repackage/com/zui/opendeviceidlibrary/b$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/repackage/com/zui/opendeviceidlibrary/b$b<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iput-object p1, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->d:Lorg/repackage/com/zui/opendeviceidlibrary/b$b;

    .line 6
    .line 7
    new-instance p1, Lorg/repackage/com/zui/opendeviceidlibrary/b$a;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lorg/repackage/com/zui/opendeviceidlibrary/b$a;-><init>(Lorg/repackage/com/zui/opendeviceidlibrary/b;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->c:Landroid/content/ServiceConnection;

    .line 13
    .line 14
    new-instance p1, Landroid/content/Intent;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string p2, "org.repackage.com.zui.deviceidservice"

    .line 20
    .line 21
    const-string v0, "org.repackage.com.zui.deviceidservice.DeviceidService"

    .line 22
    .line 23
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->a:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v0, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->c:Landroid/content/ServiceConnection;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    const-string p1, "bindService Successful!"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->e(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :cond_0
    const-string p1, "bindService Failed!"

    .line 44
    .line 45
    invoke-direct {p0, p1}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->e(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p1, -0x1

    .line 49
    return p1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 51
    .line 52
    const-string p2, "Context can not be null."

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->b:Lorg/repackage/com/zui/deviceidservice/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lorg/repackage/com/zui/deviceidservice/a;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const-string v1, "getOAID error, RemoteException!"

    .line 16
    .line 17
    invoke-direct {p0, v1}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->i(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return-object v0

    .line 25
    :cond_1
    const-string v0, "Context is null."

    .line 26
    .line 27
    invoke-direct {p0, v0}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->i(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v1, "Context is null, must be new OpenDeviceId first"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public g(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lorg/repackage/com/zui/opendeviceidlibrary/b;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->b:Lorg/repackage/com/zui/deviceidservice/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lorg/repackage/com/zui/deviceidservice/a;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const-string v1, "getUDID error, Exception!"

    .line 16
    .line 17
    invoke-direct {p0, v1}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->i(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception v0

    .line 25
    const-string v1, "getUDID error, RemoteException!"

    .line 26
    .line 27
    invoke-direct {p0, v1}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->i(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 34
    return-object v0

    .line 35
    :cond_1
    const-string v0, "Context is null."

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->i(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v1, "Context is null, must be new OpenDeviceId first"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public j()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->b:Lorg/repackage/com/zui/deviceidservice/a;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    const-string v1, "Device support opendeviceid"

    .line 7
    .line 8
    invoke-direct {p0, v1}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->e(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->b:Lorg/repackage/com/zui/deviceidservice/a;

    .line 12
    .line 13
    invoke-interface {v1}, Lorg/repackage/com/zui/deviceidservice/a;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :cond_0
    return v0

    .line 18
    :catch_0
    const-string v1, "isSupport error, RemoteException!"

    .line 19
    .line 20
    invoke-direct {p0, v1}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->i(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "liufeng, getVAID package\uff1a"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p0, v1}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v1, ""

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    :try_start_0
    iget-object v1, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->b:Lorg/repackage/com/zui/deviceidservice/a;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-interface {v1, v0}, Lorg/repackage/com/zui/deviceidservice/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v1, "getVAID error, RemoteException!"

    .line 50
    .line 51
    invoke-direct {p0, v1}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->i(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string v0, "input package is null!"

    .line 59
    .line 60
    invoke-direct {p0, v0}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->e(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 64
    return-object v0

    .line 65
    :cond_2
    const-string v0, "Context is null."

    .line 66
    .line 67
    invoke-direct {p0, v0}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->e(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string v1, "Context is null, must be new OpenDeviceId first"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0
.end method

.method public l()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "liufeng, getAAID package\uff1a"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p0, v1}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string v2, ""

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    :try_start_0
    iget-object v3, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->b:Lorg/repackage/com/zui/deviceidservice/a;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-interface {v3, v0}, Lorg/repackage/com/zui/deviceidservice/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    :cond_0
    iget-object v2, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->b:Lorg/repackage/com/zui/deviceidservice/a;

    .line 57
    .line 58
    invoke-interface {v2, v0}, Lorg/repackage/com/zui/deviceidservice/a;->c(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    iget-object v2, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->b:Lorg/repackage/com/zui/deviceidservice/a;

    .line 65
    .line 66
    invoke-interface {v2, v0}, Lorg/repackage/com/zui/deviceidservice/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    move-object v1, v0

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    const-string v0, "getAAID error, RemoteException!"

    .line 73
    .line 74
    invoke-direct {p0, v0}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->i(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const-string v0, "input package is null!"

    .line 79
    .line 80
    invoke-direct {p0, v0}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->e(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    return-object v1

    .line 84
    :cond_3
    const-string v0, "Context is null."

    .line 85
    .line 86
    invoke-direct {p0, v0}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->e(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    const-string v1, "Context is null, must be new OpenDeviceId first"

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0
.end method

.method public m()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->c:Landroid/content/ServiceConnection;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "unBind Service successful"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string v0, "unBind Service exception"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lorg/repackage/com/zui/opendeviceidlibrary/b;->i(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lorg/repackage/com/zui/opendeviceidlibrary/b;->b:Lorg/repackage/com/zui/deviceidservice/a;

    .line 21
    .line 22
    return-void
.end method
