.class public interface abstract Lkotlinx/coroutines/channels/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/s;
.implements Lkotlinx/coroutines/channels/ReceiveChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/g$a;,
        Lkotlinx/coroutines/channels/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/s<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/ReceiveChannel<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final G1:Lkotlinx/coroutines/channels/g$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final H1:I = 0x7fffffff

.field public static final I1:I = 0x0

.field public static final J1:I = -0x1

.field public static final K1:I = -0x2

.field public static final M1:I = -0x3

.field public static final N1:Ljava/lang/String; = "kotlinx.coroutines.channels.defaultBuffer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/g$b;->a:Lkotlinx/coroutines/channels/g$b;

    sput-object v0, Lkotlinx/coroutines/channels/g;->G1:Lkotlinx/coroutines/channels/g$b;

    return-void
.end method
