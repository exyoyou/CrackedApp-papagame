.class public final Lcom/squareup/wire/AnyMessage$a;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/AnyMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/squareup/wire/AnyMessage;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnyMessage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnyMessage.kt\ncom/squareup/wire/AnyMessage$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,127:1\n463#2,7:128\n*S KotlinDebug\n*F\n+ 1 AnyMessage.kt\ncom/squareup/wire/AnyMessage$Companion$ADAPTER$1\n*L\n111#1:128,7\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnyMessage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnyMessage.kt\ncom/squareup/wire/AnyMessage$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,127:1\n463#2,7:128\n*S KotlinDebug\n*F\n+ 1 AnyMessage.kt\ncom/squareup/wire/AnyMessage$Companion$ADAPTER$1\n*L\n111#1:128,7\n*E\n"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/squareup/wire/AnyMessage;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "type.googleapis.com/google.protobuf.Any"

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic J(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/squareup/wire/AnyMessage;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/squareup/wire/AnyMessage$a;->R(Lcom/squareup/wire/AnyMessage;)Lcom/squareup/wire/AnyMessage;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public N(Lcom/squareup/wire/b0;)Lcom/squareup/wire/AnyMessage;
    .locals 6
    .param p1    # Lcom/squareup/wire/b0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "reader"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/squareup/wire/b0;->f()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-string v3, ""

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/b0;->m()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, -0x1

    .line 19
    if-eq v4, v5, :cond_2

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    if-eq v4, v5, :cond_1

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    if-eq v4, v5, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, v4}, Lcom/squareup/wire/b0;->s(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->I:Lcom/squareup/wire/ProtoAdapter;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/b0;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->J:Lcom/squareup/wire/ProtoAdapter;

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/b0;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/b0;->h(J)Lokio/ByteString;

    .line 46
    .line 47
    .line 48
    new-instance p1, Lcom/squareup/wire/AnyMessage;

    .line 49
    .line 50
    check-cast v3, Ljava/lang/String;

    .line 51
    .line 52
    check-cast v0, Lokio/ByteString;

    .line 53
    .line 54
    invoke-direct {p1, v3, v0}, Lcom/squareup/wire/AnyMessage;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    .line 55
    .line 56
    .line 57
    return-object p1
.end method

.method public O(Lcom/squareup/wire/c0;Lcom/squareup/wire/AnyMessage;)V
    .locals 3
    .param p1    # Lcom/squareup/wire/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/squareup/wire/AnyMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "writer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->J:Lcom/squareup/wire/ProtoAdapter;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/squareup/wire/AnyMessage;->getTypeUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->n(Lcom/squareup/wire/c0;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->I:Lcom/squareup/wire/ProtoAdapter;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-virtual {p2}, Lcom/squareup/wire/AnyMessage;->getValue()Lokio/ByteString;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->n(Lcom/squareup/wire/c0;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public P(Lcom/squareup/wire/ReverseProtoWriter;Lcom/squareup/wire/AnyMessage;)V
    .locals 3
    .param p1    # Lcom/squareup/wire/ReverseProtoWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/squareup/wire/AnyMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "writer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->I:Lcom/squareup/wire/ProtoAdapter;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/squareup/wire/AnyMessage;->getValue()Lokio/ByteString;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->o(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->J:Lcom/squareup/wire/ProtoAdapter;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p2}, Lcom/squareup/wire/AnyMessage;->getTypeUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->o(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public Q(Lcom/squareup/wire/AnyMessage;)I
    .locals 3
    .param p1    # Lcom/squareup/wire/AnyMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->J:Lcom/squareup/wire/ProtoAdapter;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/squareup/wire/AnyMessage;->getTypeUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->q(ILjava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->I:Lcom/squareup/wire/ProtoAdapter;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {p1}, Lcom/squareup/wire/AnyMessage;->getValue()Lokio/ByteString;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->q(ILjava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    add-int/2addr v0, p1

    .line 29
    return v0
.end method

.method public R(Lcom/squareup/wire/AnyMessage;)Lcom/squareup/wire/AnyMessage;
    .locals 2
    .param p1    # Lcom/squareup/wire/AnyMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/squareup/wire/AnyMessage;

    .line 7
    .line 8
    const-string v0, "square.github.io/wire/redacted"

    .line 9
    .line 10
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 11
    .line 12
    invoke-direct {p1, v0, v1}, Lcom/squareup/wire/AnyMessage;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public bridge synthetic c(Lcom/squareup/wire/b0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/wire/AnyMessage$a;->N(Lcom/squareup/wire/b0;)Lcom/squareup/wire/AnyMessage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic h(Lcom/squareup/wire/c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/squareup/wire/AnyMessage;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/AnyMessage$a;->O(Lcom/squareup/wire/c0;Lcom/squareup/wire/AnyMessage;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic i(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/squareup/wire/AnyMessage;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/AnyMessage$a;->P(Lcom/squareup/wire/ReverseProtoWriter;Lcom/squareup/wire/AnyMessage;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic p(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/squareup/wire/AnyMessage;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/squareup/wire/AnyMessage$a;->Q(Lcom/squareup/wire/AnyMessage;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
