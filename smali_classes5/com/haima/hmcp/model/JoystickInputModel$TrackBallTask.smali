.class Lcom/haima/hmcp/model/JoystickInputModel$TrackBallTask;
.super Lcom/haima/hmcp/widgets/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/model/JoystickInputModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackBallTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/model/JoystickInputModel;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/model/JoystickInputModel;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallTask;->this$0:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/haima/hmcp/widgets/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallTask;->this$0:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/JoystickInputModel;->access$500(Lcom/haima/hmcp/model/JoystickInputModel;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallTask;->this$0:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/haima/hmcp/model/JoystickInputModel;->access$600(Lcom/haima/hmcp/model/JoystickInputModel;)Lcom/haima/hmcp/beans/PointCoord;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/model/JoystickInputModel;->access$700(Lcom/haima/hmcp/model/JoystickInputModel;ILcom/haima/hmcp/beans/PointCoord;)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallTask;->this$0:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/haima/hmcp/model/JoystickInputModel;->access$600(Lcom/haima/hmcp/model/JoystickInputModel;)Lcom/haima/hmcp/beans/PointCoord;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v0, v1, v3, v3, v2}, Lcom/haima/hmcp/model/JoystickInputModel;->access$800(Lcom/haima/hmcp/model/JoystickInputModel;IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallTask;->this$0:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Lcom/haima/hmcp/model/JoystickInputModel;->access$502(Lcom/haima/hmcp/model/JoystickInputModel;I)I

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
