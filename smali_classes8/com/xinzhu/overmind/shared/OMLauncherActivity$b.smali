.class Lcom/xinzhu/overmind/shared/OMLauncherActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/shared/OMLauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/shared/OMLauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$b;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

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
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$b;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 2
    .line 3
    new-instance v0, Landroid/os/Messenger;

    .line 4
    .line 5
    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p1, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->v:Landroid/os/Messenger;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$b;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p1, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->x:Z

    .line 14
    .line 15
    :try_start_0
    new-instance p1, Landroid/os/Message;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 18
    .line 19
    .line 20
    iput p2, p1, Landroid/os/Message;->what:I

    .line 21
    .line 22
    new-instance p2, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v0, "_game_id"

    .line 28
    .line 29
    iget-object v1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$b;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->k:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$b;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 40
    .line 41
    iget-object v0, p2, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->w:Landroid/os/Messenger;

    .line 42
    .line 43
    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 44
    .line 45
    iget-object p2, p2, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->v:Landroid/os/Messenger;

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/OMLauncherActivity$b;->b:Lcom/xinzhu/overmind/shared/OMLauncherActivity;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->v:Landroid/os/Messenger;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p1, Lcom/xinzhu/overmind/shared/OMLauncherActivity;->x:Z

    .line 8
    .line 9
    return-void
.end method
