.class Lcom/join/mgps/fragment/UserCenterFragment_$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/UserCenterFragment_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/UserCenterFragment_;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/UserCenterFragment_;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/UserCenterFragment_$1;->a:Lcom/join/mgps/fragment/UserCenterFragment_;

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
    iget-object p2, p0, Lcom/join/mgps/fragment/UserCenterFragment_$1;->a:Lcom/join/mgps/fragment/UserCenterFragment_;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lcom/join/mgps/fragment/d6;->updateInfo(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
