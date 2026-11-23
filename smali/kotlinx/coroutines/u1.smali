.class final Lkotlinx/coroutines/u1;
.super Lkotlinx/coroutines/a2;
.source "SourceFile"


# instance fields
.field private final f:Lkotlinx/coroutines/s1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/s1;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/s1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/a2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/u1;->f:Lkotlinx/coroutines/s1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/u1;->f:Lkotlinx/coroutines/s1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lkotlinx/coroutines/s1;->a(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
