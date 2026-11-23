.class Lcom/papa/controller/component/bluetooth/BluetoothManager$3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/controller/component/bluetooth/BluetoothManager$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/controller/component/bluetooth/BluetoothManager$3;


# direct methods
.method constructor <init>(Lcom/papa/controller/component/bluetooth/BluetoothManager$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$3$a;->b:Lcom/papa/controller/component/bluetooth/BluetoothManager$3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$3$a;->b:Lcom/papa/controller/component/bluetooth/BluetoothManager$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa/controller/component/bluetooth/BluetoothManager$3;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->s()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
