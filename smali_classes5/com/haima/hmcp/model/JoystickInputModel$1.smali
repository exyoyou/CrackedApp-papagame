.class Lcom/haima/hmcp/model/JoystickInputModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/model/JoystickInputModel;->sendTrackBallRMove(ZFFLcom/haima/hmcp/beans/PointCoord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/model/JoystickInputModel;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/model/JoystickInputModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel$1;->this$0:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMorePointIsRun()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$1;->this$0:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/JoystickInputModel;->access$300(Lcom/haima/hmcp/model/JoystickInputModel;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onMoveSpeed()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$1;->this$0:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/JoystickInputModel;->access$200(Lcom/haima/hmcp/model/JoystickInputModel;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onPutMapModeEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$1;->this$0:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->access$000(Lcom/haima/hmcp/model/JoystickInputModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRemoveMapModeEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$1;->this$0:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/haima/hmcp/model/JoystickInputModel;->access$100(Lcom/haima/hmcp/model/JoystickInputModel;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$1;->this$0:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/model/JoystickInputModel;->access$400(Lcom/haima/hmcp/model/JoystickInputModel;ILcom/haima/hmcp/beans/FPoint;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
