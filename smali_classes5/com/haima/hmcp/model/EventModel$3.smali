.class Lcom/haima/hmcp/model/EventModel$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/KeyboardInputModelListener;


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
    iput-object p1, p0, Lcom/haima/hmcp/model/EventModel$3;->this$0:Lcom/haima/hmcp/model/EventModel;

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
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$3;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/model/EventModel;->cacheModeMapEvent(IFFLcom/haima/hmcp/beans/PointCoord;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onCacheModeMapEvent2(IFFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$3;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/model/EventModel;->access$2000(Lcom/haima/hmcp/model/EventModel;IFFI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onCleanFnModeMapEvent(IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/model/EventModel$3;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/haima/hmcp/model/EventModel;->access$100(Lcom/haima/hmcp/model/EventModel;)Lcom/haima/hmcp/model/MapModeEventCacheModel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/haima/hmcp/model/MapModeEventCacheModel;->clearAllFnModeMapEvent()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onEventSend(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$3;->this$0:Lcom/haima/hmcp/model/EventModel;

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

.method public onMorePointRun()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$3;->this$0:Lcom/haima/hmcp/model/EventModel;

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

.method public onSendMorePointEvent(Lcom/haima/hmcp/beans/PointCoord;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$3;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/model/EventModel;->access$1900(Lcom/haima/hmcp/model/EventModel;Lcom/haima/hmcp/beans/PointCoord;I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onSightBeadButtonClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventModel$3;->this$0:Lcom/haima/hmcp/model/EventModel;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/model/EventModel;->access$1800(Lcom/haima/hmcp/model/EventModel;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
