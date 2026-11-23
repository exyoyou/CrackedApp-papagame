.class Lcom/wufun/union/ad/AdStubActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wufun/union/ad/AdStubActivity;->bindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/wufun/union/ad/AdStubActivity;


# direct methods
.method constructor <init>(Lcom/wufun/union/ad/AdStubActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufun/union/ad/AdStubActivity$a;->b:Lcom/wufun/union/ad/AdStubActivity;

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
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/wufun/union/ad/AdStubActivity$a;->b:Lcom/wufun/union/ad/AdStubActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Landroid/os/Messenger;

    .line 10
    .line 11
    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 12
    .line 13
    .line 14
    new-instance p2, Landroid/os/Message;

    .line 15
    .line 16
    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    iput v0, p2, Landroid/os/Message;->what:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/wufun/union/ad/AdStubActivity$a;->b:Lcom/wufun/union/ad/AdStubActivity;

    .line 23
    .line 24
    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/wufun/union/ad/AdStubActivity;->a(Lcom/wufun/union/ad/AdStubActivity;)Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
