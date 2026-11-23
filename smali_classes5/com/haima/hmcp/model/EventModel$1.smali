.class Lcom/haima/hmcp/model/EventModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/DpadInputModelListener;


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
    iput-object p1, p0, Lcom/haima/hmcp/model/EventModel$1;->this$0:Lcom/haima/hmcp/model/EventModel;

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
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$1;->this$0:Lcom/haima/hmcp/model/EventModel;

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

.method public onIsNativeDpadGame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$1;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$400(Lcom/haima/hmcp/model/EventModel;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onMapPointCoord(I)Lcom/haima/hmcp/beans/PointCoord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$1;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/haima/hmcp/model/EventModel;->access$500(Lcom/haima/hmcp/model/EventModel;I)Lcom/haima/hmcp/beans/PointCoord;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$1;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/haima/hmcp/model/EventModel;->access$600(Lcom/haima/hmcp/model/EventModel;I)Lcom/haima/hmcp/beans/PointCoord;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onMappingVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$1;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$300(Lcom/haima/hmcp/model/EventModel;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$1;->this$0:Lcom/haima/hmcp/model/EventModel;

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

.method public onSendKeyboardEvent(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$1;->this$0:Lcom/haima/hmcp/model/EventModel;

    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->access$700(Lcom/haima/hmcp/model/EventModel;Ljava/lang/String;I)V

    return-void
.end method

.method public onSendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$1;->this$0:Lcom/haima/hmcp/model/EventModel;

    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->access$800(Lcom/haima/hmcp/model/EventModel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$1;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->access$000(Lcom/haima/hmcp/model/EventModel;ILcom/haima/hmcp/beans/FPoint;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
