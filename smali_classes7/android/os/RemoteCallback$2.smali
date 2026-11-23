.class Landroid/os/RemoteCallback$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/RemoteCallback;

.field final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/os/RemoteCallback$2;->this$0:Landroid/os/RemoteCallback;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/os/RemoteCallback$2;->val$result:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/RemoteCallback$2;->this$0:Landroid/os/RemoteCallback;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/RemoteCallback;->access$000(Landroid/os/RemoteCallback;)Landroid/os/RemoteCallback$OnResultListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/os/RemoteCallback$2;->val$result:Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/os/RemoteCallback$OnResultListener;->onResult(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
