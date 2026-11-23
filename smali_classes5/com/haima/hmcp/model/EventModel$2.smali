.class Lcom/haima/hmcp/model/EventModel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;


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
    iput-object p1, p0, Lcom/haima/hmcp/model/EventModel$2;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onButtonDirection()Lcom/haima/hmcp/beans/PointCoord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$2;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$1100(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/beans/PointCoord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onDpadPoint()Lcom/haima/hmcp/beans/FPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$2;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$1400(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/beans/FPoint;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onGetMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/beans/PointCoord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$2;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$1600(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/model/EventMappingModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/haima/hmcp/model/EventMappingModel;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public onSendEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$2;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/haima/hmcp/model/EventModel;->access$900(Lcom/haima/hmcp/model/EventModel;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSendMappingEvent(Lcom/haima/hmcp/beans/PointCoord;II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$2;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/haima/hmcp/model/EventModel;->access$1500(Lcom/haima/hmcp/model/EventModel;Lcom/haima/hmcp/beans/PointCoord;II)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onSendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$2;->this$0:Lcom/haima/hmcp/model/EventModel;

    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->access$000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/FPoint;)Z

    return-void
.end method

.method public onSendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$2;->this$0:Lcom/haima/hmcp/model/EventModel;

    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->access$1000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/PointCoord;)Z

    return-void
.end method

.method public onTrackBallL()Lcom/haima/hmcp/beans/PointCoord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$2;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$1200(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/beans/PointCoord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onTrackBallR()Lcom/haima/hmcp/beans/PointCoord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$2;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$1300(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/beans/PointCoord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
