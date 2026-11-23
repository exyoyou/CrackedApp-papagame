.class public Lcom/papa/controller/component/bluetooth/BluetoothManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/controller/component/bluetooth/BluetoothManager$c;
    }
.end annotation


# static fields
.field private static k:Lcom/papa/controller/component/bluetooth/BluetoothManager;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/bluetooth/BluetoothAdapter;

.field private c:I

.field private d:Landroid/bluetooth/BluetoothProfile;

.field private e:Z

.field private f:Lcom/papa/controller/component/bluetooth/BluetoothManager$c;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private i:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->c:I

    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->d:Landroid/bluetooth/BluetoothProfile;

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->e:Z

    .line 13
    .line 14
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->h:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v0, Lcom/papa/controller/component/bluetooth/BluetoothManager$b;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager$b;-><init>(Lcom/papa/controller/component/bluetooth/BluetoothManager;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->i:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 22
    .line 23
    new-instance v0, Lcom/papa/controller/component/bluetooth/BluetoothManager$3;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager$3;-><init>(Lcom/papa/controller/component/bluetooth/BluetoothManager;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->j:Landroid/content/BroadcastReceiver;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 37
    .line 38
    new-instance p1, Lcom/papa/controller/component/bluetooth/BluetoothManager$a;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager$a;-><init>(Lcom/papa/controller/component/bluetooth/BluetoothManager;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->h:Landroid/os/Handler;

    .line 44
    .line 45
    return-void
.end method

.method static synthetic a(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Lcom/papa/controller/component/bluetooth/BluetoothManager$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->f:Lcom/papa/controller/component/bluetooth/BluetoothManager$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->g:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/papa/controller/component/bluetooth/BluetoothManager;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->v(ILandroid/bluetooth/BluetoothDevice;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/papa/controller/component/bluetooth/BluetoothManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->r(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/papa/controller/component/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->d:Landroid/bluetooth/BluetoothProfile;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic f(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->q()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic i(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->h:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private j()V
    .locals 3

    .line 1
    const-string v0, "closeProfileProxy"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->r(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->p()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->q()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 19
    .line 20
    iget v1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->c:I

    .line 21
    .line 22
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->d:Landroid/bluetooth/BluetoothProfile;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->d:Landroid/bluetooth/BluetoothProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    return-void
.end method

.method private l(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p1, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    return-object p1
.end method

.method private m()I
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    const-class v0, Landroid/bluetooth/BluetoothProfile;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_2

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-string v5, "INPUT_DEVICE"

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/4 v5, 0x0

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    return v0

    .line 53
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const-string v6, "HID_HOST"

    .line 58
    .line 59
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return v0

    .line 70
    :catch_0
    move-exception v3

    .line 71
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x4

    .line 78
    return v0
.end method

.method public static n(Landroid/content/Context;)Lcom/papa/controller/component/bluetooth/BluetoothManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->k:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->k:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->k:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 13
    .line 14
    return-object p0
.end method

.method private o()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->c:I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->m()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->c:I

    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->p()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->q()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->a:Landroid/content/Context;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->i:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 33
    .line 34
    iget v3, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->c:I

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method private q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->d:Landroid/bluetooth/BluetoothProfile;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method private r(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method private t()V
    .locals 4

    .line 1
    const-string v0, "Registering BluetoothReceiver..."

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->r(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->e:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->z()V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "android.bluetooth.device.action.CLASS_CHANGED"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "android.bluetooth.device.action.FOUND"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 89
    .line 90
    const/16 v2, 0x1a

    .line 91
    .line 92
    if-lt v1, v2, :cond_1

    .line 93
    .line 94
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->a:Landroid/content/Context;

    .line 95
    .line 96
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->j:Landroid/content/BroadcastReceiver;

    .line 97
    .line 98
    const/4 v3, 0x2

    .line 99
    invoke-static {v1, v2, v0, v3}, Lg1/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->a:Landroid/content/Context;

    .line 104
    .line 105
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->j:Landroid/content/BroadcastReceiver;

    .line 106
    .line 107
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    :goto_0
    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v1, "Registering BluetoothReceiver failed."

    .line 116
    .line 117
    invoke-direct {p0, v1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->r(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    :goto_1
    const-string v0, "Registering BluetoothReceiver finished."

    .line 124
    .line 125
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->r(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method private v(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->h:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput p1, v0, Landroid/os/Message;->what:I

    .line 11
    .line 12
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static w(I)V
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    :catch_0
    return-void
.end method

.method private z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "Unregistering BluetoothReceiver..."

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->r(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-boolean v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->e:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->a:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->j:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    const-string v1, "Unregistering BluetoothReceiver failed."

    .line 28
    .line 29
    invoke-direct {p0, v1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->r(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    const-string v0, "Unregistering BluetoothReceiver finished."

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->r(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public k()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->a:Landroid/content/Context;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    .line 17
    .line 18
    invoke-static {v1, v2}, Landroidx/core/app/q;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->d:Landroid/bluetooth/BluetoothProfile;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-interface {v0}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    return-object v0

    .line 58
    :catch_1
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    return-object v0
.end method

.method public p()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v2, 0x17

    .line 5
    .line 6
    if-lt v1, v2, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->a:Landroid/content/Context;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    .line 13
    .line 14
    invoke-static {v1, v2}, Landroidx/core/app/q;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    :cond_0
    const-string v1, "Bluetooth is not available."

    .line 31
    .line 32
    invoke-direct {p0, v1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->r(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return v0

    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    return v0

    .line 38
    :catch_0
    const-string v1, "Bluetooth is not available. Cannot get bluetooth address."

    .line 39
    .line 40
    invoke-direct {p0, v1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->r(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v0
.end method

.method declared-synchronized s()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->q()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->g:Ljava/util/Map;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->g:Ljava/util/Map;

    .line 20
    .line 21
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->g:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->k()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x0

    .line 41
    :goto_0
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ge v3, v4, :cond_2

    .line 48
    .line 49
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->l(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Collection;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const/4 v4, -0x1

    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 85
    .line 86
    iget-object v5, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->h:Landroid/os/Handler;

    .line 87
    .line 88
    const/4 v6, 0x2

    .line 89
    invoke-virtual {v5, v6, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->l(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Collection;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 116
    .line 117
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->h:Landroid/os/Handler;

    .line 118
    .line 119
    const/4 v3, 0x3

    .line 120
    invoke-virtual {v2, v3, v4, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    monitor-exit p0

    .line 129
    return-void

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    monitor-exit p0

    .line 132
    throw v0
.end method

.method public u(Lcom/papa/controller/component/bluetooth/BluetoothManager$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager;->f:Lcom/papa/controller/component/bluetooth/BluetoothManager$c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->s()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    const-string v0, "BluetoothManager starting ..."

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->r(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->p()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "BluetoothManager start failed."

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->r(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->t()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->q()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->j()V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :goto_0
    const-string v0, "BluetoothManager start finished."

    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->r(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->j()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method
