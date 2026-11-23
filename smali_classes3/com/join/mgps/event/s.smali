.class public final Lcom/join/mgps/event/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/wufan/user/service/protobuf/MessageProto$Response;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V
    .locals 1
    .param p1    # Lcom/wufan/user/service/protobuf/MessageProto$Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/join/mgps/event/s;->a:Lcom/wufan/user/service/protobuf/MessageProto$Response;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/event/s;Lcom/wufan/user/service/protobuf/MessageProto$Response;ILjava/lang/Object;)Lcom/join/mgps/event/s;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/join/mgps/event/s;->a:Lcom/wufan/user/service/protobuf/MessageProto$Response;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/event/s;->b(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Lcom/join/mgps/event/s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/wufan/user/service/protobuf/MessageProto$Response;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/s;->a:Lcom/wufan/user/service/protobuf/MessageProto$Response;

    return-object v0
.end method

.method public final b(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Lcom/join/mgps/event/s;
    .locals 1
    .param p1    # Lcom/wufan/user/service/protobuf/MessageProto$Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/join/mgps/event/s;

    invoke-direct {v0, p1}, Lcom/join/mgps/event/s;-><init>(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    return-object v0
.end method

.method public final d()Lcom/wufan/user/service/protobuf/MessageProto$Response;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/s;->a:Lcom/wufan/user/service/protobuf/MessageProto$Response;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/join/mgps/event/s;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/join/mgps/event/s;

    iget-object v1, p0, Lcom/join/mgps/event/s;->a:Lcom/wufan/user/service/protobuf/MessageProto$Response;

    iget-object p1, p1, Lcom/join/mgps/event/s;->a:Lcom/wufan/user/service/protobuf/MessageProto$Response;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/join/mgps/event/s;->a:Lcom/wufan/user/service/protobuf/MessageProto$Response;

    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EMessageEvent(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/event/s;->a:Lcom/wufan/user/service/protobuf/MessageProto$Response;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
