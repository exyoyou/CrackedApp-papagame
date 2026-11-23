.class Lorg/hmwebrtc/NetworkMonitor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/NetworkChangeDetector$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hmwebrtc/NetworkMonitor;->createNetworkChangeDetector(Landroid/content/Context;)Lorg/hmwebrtc/NetworkChangeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/NetworkMonitor;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/NetworkMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/NetworkMonitor$2;->this$0:Lorg/hmwebrtc/NetworkMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConnectionTypeChanged(Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor$2;->this$0:Lorg/hmwebrtc/NetworkMonitor;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/hmwebrtc/NetworkMonitor;->access$100(Lorg/hmwebrtc/NetworkMonitor;Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onNetworkConnect(Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor$2;->this$0:Lorg/hmwebrtc/NetworkMonitor;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/hmwebrtc/NetworkMonitor;->access$200(Lorg/hmwebrtc/NetworkMonitor;Lorg/hmwebrtc/NetworkChangeDetector$NetworkInformation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onNetworkDisconnect(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor$2;->this$0:Lorg/hmwebrtc/NetworkMonitor;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lorg/hmwebrtc/NetworkMonitor;->access$300(Lorg/hmwebrtc/NetworkMonitor;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onNetworkPreference(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/NetworkChangeDetector$ConnectionType;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/NetworkMonitor$2;->this$0:Lorg/hmwebrtc/NetworkMonitor;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lorg/hmwebrtc/NetworkMonitor;->access$400(Lorg/hmwebrtc/NetworkMonitor;Ljava/util/List;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
