.class Lcom/papa/controller/component/bluetooth/spp/b$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/bluetooth/spp/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final b:Landroid/bluetooth/BluetoothSocket;

.field private final c:Landroid/bluetooth/BluetoothDevice;

.field private d:Ljava/lang/String;

.field final synthetic e:Lcom/papa/controller/component/bluetooth/spp/b;


# direct methods
.method public constructor <init>(Lcom/papa/controller/component/bluetooth/spp/b;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->e:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->c:Landroid/bluetooth/BluetoothDevice;

    .line 7
    .line 8
    :try_start_0
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/spp/b;->e(Lcom/papa/controller/component/bluetooth/spp/b;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/papa/controller/component/bluetooth/spp/b;->a()Ljava/util/UUID;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcom/papa/controller/component/bluetooth/spp/b;->c()Ljava/util/UUID;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    .line 28
    .line 29
    .line 30
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->b:Landroid/bluetooth/BluetoothSocket;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->b:Landroid/bluetooth/BluetoothSocket;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->e:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->b(Lcom/papa/controller/component/bluetooth/spp/b;)Landroid/bluetooth/BluetoothAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->b:Landroid/bluetooth/BluetoothSocket;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->e:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_1
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->e:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v1, v2}, Lcom/papa/controller/component/bluetooth/spp/b;->g(Lcom/papa/controller/component/bluetooth/spp/b;Lcom/papa/controller/component/bluetooth/spp/b$b;)Lcom/papa/controller/component/bluetooth/spp/b$b;

    .line 22
    .line 23
    .line 24
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->e:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->b:Landroid/bluetooth/BluetoothSocket;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->c:Landroid/bluetooth/BluetoothDevice;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->d:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa/controller/component/bluetooth/spp/b;->k(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw v1

    .line 40
    :catch_0
    :try_start_3
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->b:Landroid/bluetooth/BluetoothSocket;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 43
    .line 44
    .line 45
    :catch_1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/b$b;->e:Lcom/papa/controller/component/bluetooth/spp/b;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/b;->f(Lcom/papa/controller/component/bluetooth/spp/b;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
