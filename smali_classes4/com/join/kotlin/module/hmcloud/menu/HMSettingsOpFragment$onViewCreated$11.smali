.class public final Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$onViewCreated$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0012\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$onViewCreated$11",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "onProgressChanged",
        "",
        "seekBar",
        "Landroid/widget/SeekBar;",
        "progress",
        "",
        "fromUser",
        "",
        "onStartTrackingTouch",
        "onStopTrackingTouch",
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
.field final synthetic $senMax:I

.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;


# direct methods
.method constructor <init>(ILcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$onViewCreated$11;->$senMax:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$onViewCreated$11;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    int-to-float p1, p2

    .line 2
    iget p2, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$onViewCreated$11;->$senMax:I

    .line 3
    .line 4
    int-to-float p2, p2

    .line 5
    div-float/2addr p1, p2

    .line 6
    iget-object p2, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$onViewCreated$11;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getTvSen()Landroid/widget/TextView;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x64

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    mul-float v0, v0, p1

    .line 21
    .line 22
    float-to-double v0, v0

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    double-to-float v0, v0

    .line 28
    float-to-int v0, v0

    .line 29
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/16 v0, 0x25

    .line 33
    .line 34
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    const/high16 p2, 0x40000000    # 2.0f

    .line 45
    .line 46
    mul-float p1, p1, p2

    .line 47
    .line 48
    iget-object p2, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$onViewCreated$11;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMouseSensitivity()Landroidx/lifecycle/MutableLiveData;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
