.class Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$1;->a:Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

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
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_1

    .line 10
    .line 11
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService$1;->a:Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->access$000(Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;)Lcom/xinzhu/overmind/server/pm/u;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/u;->j()V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method
