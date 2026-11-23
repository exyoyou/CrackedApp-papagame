.class Lcom/haima/hmcp/model/EventModel$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/JoystickInputModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/model/EventModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/model/EventModel;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/model/EventModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$100(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onEventSend(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/haima/hmcp/model/EventModel;->access$900(Lcom/haima/hmcp/model/EventModel;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onGamePadModeDpadEvent(Landroid/view/KeyEvent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->access$3200(Lcom/haima/hmcp/model/EventModel;Landroid/view/KeyEvent;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onGamePadNumInBattle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/haima/hmcp/model/EventModel;->access$2500(Lcom/haima/hmcp/model/EventModel;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onGamePadStart(Landroid/view/InputDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/haima/hmcp/model/EventModel;->access$2900(Lcom/haima/hmcp/model/EventModel;Landroid/view/InputDevice;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onInputType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$2100(Lcom/haima/hmcp/model/EventModel;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onMappingProcessKey(Landroid/view/KeyEvent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->access$3100(Lcom/haima/hmcp/model/EventModel;Landroid/view/KeyEvent;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onMorePointIsRun()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$1700(Lcom/haima/hmcp/model/EventModel;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onMouseInputEvent(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->access$2400(Lcom/haima/hmcp/model/EventModel;FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onMoveSpeed()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$1600(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/model/EventMappingModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getMoveSpeed()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public onProcessDpadKey(Landroid/view/KeyEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$2800(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/model/DpadInputModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/DpadInputModel;->processDpadKey(Landroid/view/KeyEvent;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onProcessKey2(Landroid/view/KeyEvent;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->access$2300(Lcom/haima/hmcp/model/EventModel;Landroid/view/KeyEvent;I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onProcessMouseMove(Landroid/view/KeyEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/haima/hmcp/model/EventModel;->access$3000(Lcom/haima/hmcp/model/EventModel;Landroid/view/KeyEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPutDownEventMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->access$2600(Lcom/haima/hmcp/model/EventModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPutMapModeEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$100(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onRemoveDownEventMap(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/haima/hmcp/model/EventModel;->access$2700(Lcom/haima/hmcp/model/EventModel;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRemoveMapModeEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$100(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->remove(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$200(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onTrackBallRMove()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$1600(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/model/EventMappingModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getTrackBallRMove()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public onTrackBallRZ()Lcom/haima/hmcp/beans/PointCoord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$4;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$2200(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/beans/PointCoord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
