.class public final Lcom/join/kotlin/base/fragment/BaseVmFragment$mHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/base/fragment/BaseVmFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/base/fragment/BaseVmFragment$mHandler$1",
        "Landroid/os/Handler$Callback;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/base/fragment/BaseVmFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/kotlin/base/fragment/BaseVmFragment<",
            "TVM;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/join/kotlin/base/fragment/BaseVmFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/base/fragment/BaseVmFragment<",
            "TVM;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/base/fragment/BaseVmFragment$mHandler$1;->this$0:Lcom/join/kotlin/base/fragment/BaseVmFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/base/fragment/BaseVmFragment$mHandler$1;->this$0:Lcom/join/kotlin/base/fragment/BaseVmFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->access$getH_DELAY_EXP_ITEM$p(Lcom/join/kotlin/base/fragment/BaseVmFragment;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget p1, p1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    if-ne v0, p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/kotlin/base/fragment/BaseVmFragment$mHandler$1;->this$0:Lcom/join/kotlin/base/fragment/BaseVmFragment;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->onExploreItem()V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method
