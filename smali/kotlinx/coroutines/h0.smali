.class public interface abstract Lkotlinx/coroutines/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/h0$a;,
        Lkotlinx/coroutines/h0$b;
    }
.end annotation


# static fields
.field public static final E1:Lkotlinx/coroutines/h0$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/h0$b;->b:Lkotlinx/coroutines/h0$b;

    sput-object v0, Lkotlinx/coroutines/h0;->E1:Lkotlinx/coroutines/h0$b;

    return-void
.end method


# virtual methods
.method public abstract t(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
