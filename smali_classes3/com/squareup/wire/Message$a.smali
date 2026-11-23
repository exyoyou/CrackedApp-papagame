.class public abstract Lcom/squareup/wire/Message$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;TB;>;B:",
        "Lcom/squareup/wire/Message$a<",
        "TM;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private transient a:Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transient b:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transient c:Lcom/squareup/wire/c0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    .line 7
    .line 8
    return-void
.end method

.method private final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lokio/Buffer;

    .line 6
    .line 7
    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    .line 11
    .line 12
    new-instance v0, Lcom/squareup/wire/c0;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/squareup/wire/c0;-><init>(Lokio/BufferedSink;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/squareup/wire/Message$a;->c:Lcom/squareup/wire/c0;

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/squareup/wire/c0;->a(Lokio/ByteString;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    .line 35
    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$a;
    .locals 1
    .param p2    # Lcom/squareup/wire/FieldEncoding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/squareup/wire/FieldEncoding;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/squareup/wire/Message$a<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "fieldEncoding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/squareup/wire/Message$a;->i()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-string v0, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>"

    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->c:Lcom/squareup/wire/c0;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->n(Lcom/squareup/wire/c0;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public final b(Lokio/ByteString;)Lcom/squareup/wire/Message$a;
    .locals 1
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            ")",
            "Lcom/squareup/wire/Message$a<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "unknownFields"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/squareup/wire/Message$a;->i()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->c:Lcom/squareup/wire/c0;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/squareup/wire/c0;->a(Lokio/ByteString;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object p0
.end method

.method public abstract c()Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final d()Lokio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/squareup/wire/Message$a;->c:Lcom/squareup/wire/c0;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    .line 20
    .line 21
    return-object v0
.end method

.method public final e()Lcom/squareup/wire/Message$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Message$a<",
            "TM;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    .line 17
    .line 18
    :cond_0
    iput-object v1, p0, Lcom/squareup/wire/Message$a;->c:Lcom/squareup/wire/c0;

    .line 19
    .line 20
    return-object p0
.end method

.method public final f()Lokio/Buffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lokio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lcom/squareup/wire/c0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Message$a;->c:Lcom/squareup/wire/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Lokio/Buffer;)V
    .locals 0
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/squareup/wire/Message$a;->b:Lokio/Buffer;

    .line 2
    .line 3
    return-void
.end method

.method public final k(Lokio/ByteString;)V
    .locals 1
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/squareup/wire/Message$a;->a:Lokio/ByteString;

    .line 7
    .line 8
    return-void
.end method

.method public final l(Lcom/squareup/wire/c0;)V
    .locals 0
    .param p1    # Lcom/squareup/wire/c0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/squareup/wire/Message$a;->c:Lcom/squareup/wire/c0;

    .line 2
    .line 3
    return-void
.end method
