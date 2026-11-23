.class Lcom/join/mgps/receiver/PackageInstallWatch$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/receiver/PackageInstallWatch;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/receiver/PackageInstallWatch;


# direct methods
.method constructor <init>(Lcom/join/mgps/receiver/PackageInstallWatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/receiver/PackageInstallWatch$1;->a:Lcom/join/mgps/receiver/PackageInstallWatch;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/receiver/PackageInstallWatch$1;->a:Lcom/join/mgps/receiver/PackageInstallWatch;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/join/mgps/receiver/PackageInstallWatch;->b(Lcom/join/mgps/receiver/PackageInstallWatch;Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
