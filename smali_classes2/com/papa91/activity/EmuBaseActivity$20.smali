.class Lcom/papa91/activity/EmuBaseActivity$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->bindBridge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$20;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    new-instance p1, Landroid/os/Messenger;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->mMessenger:Landroid/os/Messenger;

    .line 7
    .line 8
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$1700()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$20;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 12
    .line 13
    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->mMessenger:Landroid/os/Messenger;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->onMessengerConnected(Landroid/os/Messenger;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
