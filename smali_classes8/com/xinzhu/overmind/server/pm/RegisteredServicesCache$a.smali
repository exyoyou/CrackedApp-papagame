.class Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xinzhu/overmind/server/pm/r;


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
    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$a;->a:Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$a;->a:Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0, p2}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->h(Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;Landroid/content/Intent;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$a;->a:Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0, p2}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->h(Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;Landroid/content/Intent;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache$a;->a:Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0, p2}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->h(Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;Landroid/content/Intent;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
