.class Lcom/cloudplay/messagesdk/MessageSDK$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/listener/ConfigObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloudplay/messagesdk/MessageSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloudplay/messagesdk/MessageSDK;


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/MessageSDK;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/MessageSDK$c;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public notify(Lcom/cloudplay/messagesdk/entity/ConfigType;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK$c;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/cloudplay/messagesdk/MessageSDK;->c(Lcom/cloudplay/messagesdk/MessageSDK;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK$c;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/cloudplay/messagesdk/MessageSDK;->f(Lcom/cloudplay/messagesdk/MessageSDK;)Lcom/cloudplay/messagesdk/listener/ConfigObserver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloudplay/messagesdk/MessageSDK$c;->a:Lcom/cloudplay/messagesdk/MessageSDK;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/cloudplay/messagesdk/MessageSDK;->f(Lcom/cloudplay/messagesdk/MessageSDK;)Lcom/cloudplay/messagesdk/listener/ConfigObserver;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Lcom/cloudplay/messagesdk/listener/ConfigObserver;->notify(Lcom/cloudplay/messagesdk/entity/ConfigType;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
