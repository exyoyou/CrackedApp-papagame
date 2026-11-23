.class Lcom/join/mgps/Util/k$a;
.super Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/k;->g(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/k;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/k$a;->a:Lcom/join/mgps/Util/k;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reservation"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/Util/k$a;->a:Lcom/join/mgps/Util/k;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/join/mgps/Util/k;->b(Lcom/join/mgps/Util/k;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/h;->a(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/join/mgps/Util/k$a;->a:Lcom/join/mgps/Util/k;

    .line 14
    .line 15
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/join/mgps/Util/k;->c(Lcom/join/mgps/Util/k;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/Util/k$a;->a:Lcom/join/mgps/Util/k;

    .line 21
    .line 22
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/join/mgps/Util/k;->d(Lcom/join/mgps/Util/k;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/Util/k$a;->a:Lcom/join/mgps/Util/k;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/Util/k;->e(Lcom/join/mgps/Util/k;)Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/16 v1, 0x7e2

    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onStopped()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStopped()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
