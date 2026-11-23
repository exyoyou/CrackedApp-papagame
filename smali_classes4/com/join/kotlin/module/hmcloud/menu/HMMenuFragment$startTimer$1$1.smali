.class public final Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$startTimer$1$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/join/kotlin/module/hmcloud/menu/HMMenuFragment$startTimer$1$1",
        "Landroid/os/CountDownTimer;",
        "onTick",
        "",
        "millisUntilFinished",
        "",
        "onFinish",
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
.field final synthetic $this_run:Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$startTimer$1$1;->$this_run:Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;

    .line 2
    .line 3
    const-wide/16 v0, 0x3e8

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$startTimer$1$1;->$this_run:Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getRemainTime()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x3e8

    .line 12
    .line 13
    div-long/2addr p1, v1

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
