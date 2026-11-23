.class Lio/socket/client/Socket$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Socket;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/socket/client/Socket;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/client/Socket$5;->this$0:Lio/socket/client/Socket;

    .line 2
    .line 3
    iput-object p2, p0, Lio/socket/client/Socket$5;->val$event:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lio/socket/client/Socket$5;->val$args:[Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, Lio/socket/client/Socket;->events:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v1, p0, Lio/socket/client/Socket$5;->val$event:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/socket/client/Socket$5;->this$0:Lio/socket/client/Socket;

    .line 12
    .line 13
    iget-object v1, p0, Lio/socket/client/Socket$5;->val$event:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lio/socket/client/Socket$5;->val$args:[Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lio/socket/client/Socket;->access$601(Lio/socket/client/Socket;Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lio/socket/client/Socket$5;->val$args:[Ljava/lang/Object;

    .line 22
    .line 23
    array-length v1, v0

    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    array-length v2, v0

    .line 27
    if-lez v2, :cond_2

    .line 28
    .line 29
    aget-object v2, v0, v1

    .line 30
    .line 31
    instance-of v2, v2, Lio/socket/client/Ack;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    new-array v0, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    if-ge v2, v1, :cond_1

    .line 39
    .line 40
    iget-object v3, p0, Lio/socket/client/Socket$5;->val$args:[Ljava/lang/Object;

    .line 41
    .line 42
    aget-object v3, v3, v2

    .line 43
    .line 44
    aput-object v3, v0, v2

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v2, p0, Lio/socket/client/Socket$5;->val$args:[Ljava/lang/Object;

    .line 50
    .line 51
    aget-object v1, v2, v1

    .line 52
    .line 53
    check-cast v1, Lio/socket/client/Ack;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    :goto_1
    iget-object v2, p0, Lio/socket/client/Socket$5;->this$0:Lio/socket/client/Socket;

    .line 58
    .line 59
    iget-object v3, p0, Lio/socket/client/Socket$5;->val$event:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v2, v3, v0, v1}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;Lio/socket/client/Ack;)Lio/socket/emitter/Emitter;

    .line 62
    .line 63
    .line 64
    return-void
.end method
