.class public Lcom/papa/controller/component/bluetooth/spp/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/controller/component/bluetooth/spp/b$b;,
        Lcom/papa/controller/component/bluetooth/spp/b$d;,
        Lcom/papa/controller/component/bluetooth/spp/b$a;,
        Lcom/papa/controller/component/bluetooth/spp/b$c;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "Bluetooth Service"

.field private static final i:Ljava/lang/String; = "Bluetooth Secure"

.field private static final j:Ljava/util/UUID;

.field private static final k:Ljava/util/UUID;


# instance fields
.field private final a:Landroid/bluetooth/BluetoothAdapter;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/papa/controller/component/bluetooth/spp/b$a;

.field private d:Lcom/papa/controller/component/bluetooth/spp/b$b;

.field private e:Lcom/papa/controller/component/bluetooth/spp/b$d;

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "fa87c0d0-afac-11de-8a39-0800200c9a66"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/papa/controller/component/bluetooth/spp/b;->j:Ljava/util/UUID;

    .line 8
    .line 9
    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/papa/controller/component/bluetooth/spp/b;->k:Ljava/util/UUID;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->g:Z

    .line 6
    .line 7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 12
    .line 13
    iput p1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->f:I

    .line 14
    .line 15
    iput-object p2, p0, Lcom/papa/controller/component/bluetooth/spp/b;->b:Landroid/os/Handler;

    .line 16
    .line 17
    return-void
.end method

.method static synthetic a()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/controller/component/bluetooth/spp/b;->j:Ljava/util/UUID;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b(Lcom/papa/controller/component/bluetooth/spp/b;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/controller/component/bluetooth/spp/b;->k:Ljava/util/UUID;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d(Lcom/papa/controller/component/bluetooth/spp/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/papa/controller/component/bluetooth/spp/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/papa/controller/component/bluetooth/spp/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/spp/b;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/papa/controller/component/bluetooth/spp/b;Lcom/papa/controller/component/bluetooth/spp/b$b;)Lcom/papa/controller/component/bluetooth/spp/b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic h(Lcom/papa/controller/component/bluetooth/spp/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->b:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/papa/controller/component/bluetooth/spp/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/controller/component/bluetooth/spp/b;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->g:Z

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/papa/controller/component/bluetooth/spp/b;->p(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private m()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->g:Z

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/papa/controller/component/bluetooth/spp/b;->p(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private declared-synchronized o(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "setState() "

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->f:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " -> "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iput p1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->f:I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->b:Landroid/os/Handler;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    const/4 v2, -0x1

    .line 31
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0

    .line 42
    throw p1
.end method


# virtual methods
.method public declared-synchronized j(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->f:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$b;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$d;->a()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    .line 25
    .line 26
    :cond_1
    new-instance v0, Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1}, Lcom/papa/controller/component/bluetooth/spp/b$b;-><init>(Lcom/papa/controller/component/bluetooth/spp/b;Landroid/bluetooth/BluetoothDevice;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v2}, Lcom/papa/controller/component/bluetooth/spp/b;->o(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0

    .line 43
    throw p1
.end method

.method public declared-synchronized k(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$b;->a()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$d;->a()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->c:Lcom/papa/controller/component/bluetooth/spp/b$a;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$a;->a()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->c:Lcom/papa/controller/component/bluetooth/spp/b$a;

    .line 29
    .line 30
    :cond_2
    new-instance v0, Lcom/papa/controller/component/bluetooth/spp/b$c;

    .line 31
    .line 32
    invoke-direct {v0, p0, p1, p3}, Lcom/papa/controller/component/bluetooth/spp/b$c;-><init>(Lcom/papa/controller/component/bluetooth/spp/b;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->b:Landroid/os/Handler;

    .line 41
    .line 42
    const/4 p3, 0x4

    .line 43
    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance p3, Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v0, "device_name"

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "device_address"

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/papa/controller/component/bluetooth/spp/b;->b:Landroid/os/Handler;

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    .line 77
    .line 78
    const/4 p1, 0x3

    .line 79
    invoke-direct {p0, p1}, Lcom/papa/controller/component/bluetooth/spp/b;->o(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    monitor-exit p0

    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    monitor-exit p0

    .line 86
    throw p1
.end method

.method public declared-synchronized n()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized p(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$b;->a()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$d;->a()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/spp/b;->o(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->c:Lcom/papa/controller/component/bluetooth/spp/b$a;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    new-instance v0, Lcom/papa/controller/component/bluetooth/spp/b$a;

    .line 30
    .line 31
    invoke-direct {v0, p0, p1}, Lcom/papa/controller/component/bluetooth/spp/b$a;-><init>(Lcom/papa/controller/component/bluetooth/spp/b;Z)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->c:Lcom/papa/controller/component/bluetooth/spp/b$a;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    .line 38
    .line 39
    iput-boolean p1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    :cond_2
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    monitor-exit p0

    .line 45
    throw p1
.end method

.method public declared-synchronized q()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$b;->a()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->d:Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$d;->a()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->c:Lcom/papa/controller/component/bluetooth/spp/b$a;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$a;->a()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->c:Lcom/papa/controller/component/bluetooth/spp/b$a;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/spp/b$a;->b()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b;->c:Lcom/papa/controller/component/bluetooth/spp/b$a;

    .line 34
    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lcom/papa/controller/component/bluetooth/spp/b;->o(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    monitor-exit p0

    .line 43
    throw v0
.end method

.method public r([B)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->f:I

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b;->e:Lcom/papa/controller/component/bluetooth/spp/b$d;

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v0, p1}, Lcom/papa/controller/component/bluetooth/spp/b$d;->b([B)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw p1
.end method
