.class public interface abstract Lcom/haima/hmcp/listeners/MapModeEventCacheModelListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onButtonDirection()Lcom/haima/hmcp/beans/PointCoord;
.end method

.method public abstract onDpadPoint()Lcom/haima/hmcp/beans/FPoint;
.end method

.method public abstract onGetMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/beans/PointCoord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onSendEvent(Ljava/lang/String;)V
.end method

.method public abstract onSendMappingEvent(Lcom/haima/hmcp/beans/PointCoord;II)Z
.end method

.method public abstract onSendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V
.end method

.method public abstract onSendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)V
.end method

.method public abstract onTrackBallL()Lcom/haima/hmcp/beans/PointCoord;
.end method

.method public abstract onTrackBallR()Lcom/haima/hmcp/beans/PointCoord;
.end method
