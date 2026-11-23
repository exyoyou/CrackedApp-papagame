.class final Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/internal/FieldOrOneOfBinding;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "M",
        "B",
        "Lcom/squareup/wire/ProtoAdapter;",
        "",
        "a",
        "()Lcom/squareup/wire/ProtoAdapter;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/squareup/wire/internal/FieldOrOneOfBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/wire/internal/FieldOrOneOfBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;->b:Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/wire/ProtoAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;->b:Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "null cannot be cast to non-null type com.squareup.wire.ProtoAdapter<kotlin.Any>"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapter$a;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;->b:Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->f()Lcom/squareup/wire/ProtoAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;->b:Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->j()Lcom/squareup/wire/ProtoAdapter;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v3}, Lcom/squareup/wire/ProtoAdapter$a;->f(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/ProtoAdapter;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;->b:Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->j()Lcom/squareup/wire/ProtoAdapter;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v2, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;->b:Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->g()Lcom/squareup/wire/WireField$Label;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->M(Lcom/squareup/wire/WireField$Label;)Lcom/squareup/wire/ProtoAdapter;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;->a()Lcom/squareup/wire/ProtoAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
