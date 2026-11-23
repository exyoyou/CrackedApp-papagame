.class Lorg/hmwebrtc/NetworkMonitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/NetworkChangeDetectorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/NetworkMonitor;
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
    iput-object p1, p0, Lorg/hmwebrtc/NetworkMonitor$1;->this$0:Lorg/hmwebrtc/NetworkMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public create(Lorg/hmwebrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)Lorg/hmwebrtc/NetworkChangeDetector;
    .locals 1

    .line 1
    new-instance v0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lorg/hmwebrtc/NetworkMonitorAutoDetect;-><init>(Lorg/hmwebrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
