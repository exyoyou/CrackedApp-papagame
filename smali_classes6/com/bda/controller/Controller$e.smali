.class Lcom/bda/controller/Controller$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bda/controller/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic b:Lcom/bda/controller/Controller;


# direct methods
.method constructor <init>(Lcom/bda/controller/Controller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bda/controller/Controller$e;->b:Lcom/bda/controller/Controller;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bda/controller/Controller$e;->b:Lcom/bda/controller/Controller;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/bda/controller/f$a;->asInterface(Landroid/os/IBinder;)Lcom/bda/controller/f;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iput-object p2, p1, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/bda/controller/Controller$e;->b:Lcom/bda/controller/Controller;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/bda/controller/Controller;->registerListener()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/bda/controller/Controller$e;->b:Lcom/bda/controller/Controller;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/bda/controller/Controller;->registerMonitor()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/bda/controller/Controller$e;->b:Lcom/bda/controller/Controller;

    .line 20
    .line 21
    iget p2, p1, Lcom/bda/controller/Controller;->mActivityEvent:I

    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    if-ne p2, v0, :cond_0

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p2, v0}, Lcom/bda/controller/Controller;->sendMessage(II)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/bda/controller/Controller$e;->b:Lcom/bda/controller/Controller;

    .line 31
    .line 32
    const/4 v0, 0x7

    .line 33
    invoke-virtual {p1, p2, v0}, Lcom/bda/controller/Controller;->sendMessage(II)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bda/controller/Controller$e;->b:Lcom/bda/controller/Controller;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/bda/controller/Controller;->mService:Lcom/bda/controller/f;

    .line 5
    .line 6
    return-void
.end method
