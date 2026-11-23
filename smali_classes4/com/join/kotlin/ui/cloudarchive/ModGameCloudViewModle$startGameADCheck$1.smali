.class public final Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;
.super Le6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->startGameADCheck(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1",
        "Lcom/join/mgps/ad/callback/RewardAdCallbackImpl;",
        "onAdClose",
        "",
        "onDirectLaunch",
        "onAdShow",
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
.field final synthetic $adc:I

.field final synthetic $func:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $u:I

.field final synthetic $userPrefs:Lcom/papa91/wrapper/UserPrefs;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/papa91/wrapper/UserPrefs;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/papa91/wrapper/UserPrefs;",
            "II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$func:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$userPrefs:Lcom/papa91/wrapper/UserPrefs;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$u:I

    .line 6
    .line 7
    iput p4, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$adc:I

    .line 8
    .line 9
    invoke-direct {p0}, Le6/c;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$func:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$userPrefs:Lcom/papa91/wrapper/UserPrefs;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$u:I

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$adc:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onDirectLaunch()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$startGameADCheck$1;->$func:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method
