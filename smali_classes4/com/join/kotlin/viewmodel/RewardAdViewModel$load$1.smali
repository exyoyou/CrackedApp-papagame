.class public final Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$1;
.super Lcom/join/mgps/ad/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/viewmodel/RewardAdViewModel;->load(Landroid/app/Activity;Ljava/lang/String;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u001a\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/join/kotlin/viewmodel/RewardAdViewModel$load$1",
        "Lcom/join/mgps/ad/RewardVideoImpl;",
        "onWfADShow",
        "",
        "onWfADLoad",
        "showAd",
        "",
        "onWfVideoCached",
        "onWfADClose",
        "onWfVideoComplete",
        "onWfError",
        "err",
        "",
        "msg",
        "",
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $autoShow:Z

.field final synthetic this$0:Lcom/join/kotlin/viewmodel/RewardAdViewModel;


# direct methods
.method constructor <init>(ZLandroid/app/Activity;Lcom/join/kotlin/viewmodel/RewardAdViewModel;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$1;->$autoShow:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$1;->$activity:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$1;->this$0:Lcom/join/kotlin/viewmodel/RewardAdViewModel;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/ad/t;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onWfADClose()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/t;->onWfADClose()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$1;->this$0:Lcom/join/kotlin/viewmodel/RewardAdViewModel;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->getEvent()Lkotlinx/coroutines/flow/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lf6/a$b;->a:Lf6/a$b;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onWfADLoad(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/t;->onWfADLoad(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$1;->$autoShow:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$1;->$activity:Landroid/app/Activity;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/join/mgps/ad/a;->g(Landroid/content/Context;)Lcom/join/mgps/ad/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$1;->$activity:Landroid/app/Activity;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/join/mgps/ad/a;->i(Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onWfADShow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/t;->onWfADShow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWfError(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/ad/t;->onWfError(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$1;->this$0:Lcom/join/kotlin/viewmodel/RewardAdViewModel;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->getEvent()Lkotlinx/coroutines/flow/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lf6/a$f;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v1, p1, p2}, Lf6/a$f;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onWfVideoCached()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/t;->onWfVideoCached()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWfVideoComplete()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ad/t;->onWfVideoComplete()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$1;->this$0:Lcom/join/kotlin/viewmodel/RewardAdViewModel;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->getEvent()Lkotlinx/coroutines/flow/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lf6/a$c;->a:Lf6/a$c;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
