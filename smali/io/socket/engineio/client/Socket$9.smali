.class Lio/socket/engineio/client/Socket$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket;->probe(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/Socket;

.field final synthetic val$freezeTransport:Lio/socket/emitter/Emitter$Listener;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$self:Lio/socket/engineio/client/Socket;

.field final synthetic val$transport:[Lio/socket/engineio/client/Transport;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;[Lio/socket/engineio/client/Transport;Lio/socket/emitter/Emitter$Listener;Ljava/lang/String;Lio/socket/engineio/client/Socket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/engineio/client/Socket$9;->this$0:Lio/socket/engineio/client/Socket;

    .line 2
    .line 3
    iput-object p2, p0, Lio/socket/engineio/client/Socket$9;->val$transport:[Lio/socket/engineio/client/Transport;

    .line 4
    .line 5
    iput-object p3, p0, Lio/socket/engineio/client/Socket$9;->val$freezeTransport:Lio/socket/emitter/Emitter$Listener;

    .line 6
    .line 7
    iput-object p4, p0, Lio/socket/engineio/client/Socket$9;->val$name:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lio/socket/engineio/client/Socket$9;->val$self:Lio/socket/engineio/client/Socket;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    .line 3
    .line 4
    instance-of v1, p1, Ljava/lang/Exception;

    .line 5
    .line 6
    const-string v2, "probe error"

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lio/socket/engineio/client/EngineIOException;

    .line 11
    .line 12
    move-object v3, p1

    .line 13
    check-cast v3, Ljava/lang/Exception;

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Lio/socket/engineio/client/EngineIOException;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "probe error: "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-object v3, p1

    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v1, Lio/socket/engineio/client/EngineIOException;

    .line 50
    .line 51
    invoke-direct {v1, v2}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object v2, p0, Lio/socket/engineio/client/Socket$9;->val$transport:[Lio/socket/engineio/client/Transport;

    .line 55
    .line 56
    aget-object v2, v2, v0

    .line 57
    .line 58
    iget-object v2, v2, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v2, v1, Lio/socket/engineio/client/EngineIOException;->transport:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v2, p0, Lio/socket/engineio/client/Socket$9;->val$freezeTransport:Lio/socket/emitter/Emitter$Listener;

    .line 63
    .line 64
    new-array v3, v0, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-interface {v2, v3}, Lio/socket/emitter/Emitter$Listener;->call([Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lio/socket/engineio/client/Socket;->access$1200()Ljava/util/logging/Logger;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/4 v3, 0x1

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-static {}, Lio/socket/engineio/client/Socket;->access$1200()Ljava/util/logging/Logger;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const/4 v4, 0x2

    .line 87
    new-array v4, v4, [Ljava/lang/Object;

    .line 88
    .line 89
    iget-object v5, p0, Lio/socket/engineio/client/Socket$9;->val$name:Ljava/lang/String;

    .line 90
    .line 91
    aput-object v5, v4, v0

    .line 92
    .line 93
    aput-object p1, v4, v3

    .line 94
    .line 95
    const-string p1, "probe transport \"%s\" failed because of error: %s"

    .line 96
    .line 97
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object p1, p0, Lio/socket/engineio/client/Socket$9;->val$self:Lio/socket/engineio/client/Socket;

    .line 105
    .line 106
    new-array v2, v3, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object v1, v2, v0

    .line 109
    .line 110
    const-string v0, "upgradeError"

    .line 111
    .line 112
    invoke-virtual {p1, v0, v2}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 113
    .line 114
    .line 115
    return-void
.end method
