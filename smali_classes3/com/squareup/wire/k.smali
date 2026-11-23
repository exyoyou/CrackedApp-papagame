.class public final Lcom/squareup/wire/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(JJ)Ljava/time/Instant;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/squareup/wire/j;->a(JJ)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "ofEpochSecond(...)"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method
