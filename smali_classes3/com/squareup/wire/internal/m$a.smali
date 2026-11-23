.class public final Lcom/squareup/wire/internal/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/squareup/wire/internal/m$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJ)Lcom/squareup/wire/internal/m;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    div-long/2addr p1, p3

    .line 2
    const-wide/32 p3, 0x7fffffff

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2, p3, p4}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    long-to-int p2, p1

    .line 10
    new-instance p1, Lcom/squareup/wire/internal/m;

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lcom/squareup/wire/internal/m;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method
