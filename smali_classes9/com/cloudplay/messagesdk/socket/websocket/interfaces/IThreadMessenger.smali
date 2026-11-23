.class public interface abstract Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger$OnMessageListener;
    }
.end annotation


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract messageHandleObserverOn(Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;)V
.end method

.method public abstract notify(Ljava/lang/Object;)V
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;J)V
.end method

.method public abstract setOnMessageListener(Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger$OnMessageListener;)V
.end method
