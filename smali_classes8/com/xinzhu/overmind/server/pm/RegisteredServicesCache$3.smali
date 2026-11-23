.class Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$3;->a:Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p1, "android.intent.extra.UID"

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$3;->a:Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {v0, p2, p1}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->h(Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;Landroid/content/Intent;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
