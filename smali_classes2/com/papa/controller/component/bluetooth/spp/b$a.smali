.class Lcom/papa/controller/component/bluetooth/spp/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/bluetooth/spp/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private b:Landroid/bluetooth/BluetoothServerSocket;

.field private c:Ljava/lang/String;

.field d:Z

.field final synthetic e:Lcom/papa/controller/component/bluetooth/spp/b;


# direct methods
.method public constructor <init>(Lcom/papa/controller/component/bluetooth/spp/b;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->e:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->d:Z

    .line 8
    .line 9
    const-string v0, "Bluetooth Secure"

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/spp/b;->b(Lcom/papa/controller/component/bluetooth/spp/b;)Landroid/bluetooth/BluetoothAdapter;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {}, Lcom/papa/controller/component/bluetooth/spp/b;->a()Ljava/util/UUID;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, v0, p2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/spp/b;->b(Lcom/papa/controller/component/bluetooth/spp/b;)Landroid/bluetooth/BluetoothAdapter;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {}, Lcom/papa/controller/component/bluetooth/spp/b;->c()Ljava/util/UUID;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, v0, p2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->b:Landroid/bluetooth/BluetoothServerSocket;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->b:Landroid/bluetooth/BluetoothServerSocket;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->b:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    :catch_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->d:Z

    .line 3
    .line 4
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AcceptThread"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->e:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/papa/controller/component/bluetooth/spp/b;->d(Lcom/papa/controller/component/bluetooth/spp/b;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x3

    .line 31
    if-eq v1, v2, :cond_4

    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->d:Z

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->b:Landroid/bluetooth/BluetoothServerSocket;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :cond_1
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->e:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 48
    .line 49
    monitor-enter v1

    .line 50
    :try_start_1
    iget-object v3, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->e:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 51
    .line 52
    invoke-static {v3}, Lcom/papa/controller/component/bluetooth/spp/b;->d(Lcom/papa/controller/component/bluetooth/spp/b;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    if-eq v3, v4, :cond_2

    .line 60
    .line 61
    const/4 v4, 0x2

    .line 62
    if-eq v3, v4, :cond_2

    .line 63
    .line 64
    if-eq v3, v2, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->e:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iget-object v4, p0, Lcom/papa/controller/component/bluetooth/spp/b$a;->c:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v2, v0, v3, v4}, Lcom/papa/controller/component/bluetooth/spp/b;->k(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .line 81
    .line 82
    :catch_0
    :goto_1
    :try_start_3
    monitor-exit v1

    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    throw v0

    .line 87
    :catch_1
    :cond_4
    return-void
.end method
