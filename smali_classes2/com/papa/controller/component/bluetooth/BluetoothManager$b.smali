.class Lcom/papa/controller/component/bluetooth/BluetoothManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/controller/component/bluetooth/BluetoothManager;


# direct methods
.method constructor <init>(Lcom/papa/controller/component/bluetooth/BluetoothManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$b;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$b;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 2
    .line 3
    const-string v0, "onServiceConnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->d(Lcom/papa/controller/component/bluetooth/BluetoothManager;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$b;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->e(Lcom/papa/controller/component/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$b;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->s()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$b;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 2
    .line 3
    const-string v0, "onServiceDisconnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->d(Lcom/papa/controller/component/bluetooth/BluetoothManager;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$b;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->e(Lcom/papa/controller/component/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 12
    .line 13
    .line 14
    return-void
.end method
