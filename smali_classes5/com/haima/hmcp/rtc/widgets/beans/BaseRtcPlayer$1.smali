.class Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/listeners/HmPermissionChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->initVideoView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$1;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public checkPermissionResult(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$1;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_1
    return v1
.end method
