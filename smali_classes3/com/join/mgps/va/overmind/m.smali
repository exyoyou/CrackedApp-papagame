.class public final Lcom/join/mgps/va/overmind/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/va/overmind/m$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/join/mgps/va/overmind/m$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/va/overmind/m$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/join/mgps/va/overmind/m$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/join/mgps/va/overmind/m;->a:Lcom/join/mgps/va/overmind/m$a;

    .line 8
    .line 9
    const-class v0, Lcom/join/mgps/va/overmind/m;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/join/mgps/va/overmind/m;->b:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/va/overmind/m;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b(Ljava/lang/String;)J
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/va/overmind/m;->a:Lcom/join/mgps/va/overmind/m$a;

    invoke-virtual {v0, p0}, Lcom/join/mgps/va/overmind/m$a;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final c(Ljava/lang/String;JJ)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/va/overmind/m;->a:Lcom/join/mgps/va/overmind/m$a;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/va/overmind/m$a;->h(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static final d(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/va/overmind/m;->a:Lcom/join/mgps/va/overmind/m$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/join/mgps/va/overmind/m$a;->n(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static final delete(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/join/mgps/va/overmind/m;->a:Lcom/join/mgps/va/overmind/m$a;

    invoke-virtual {v0, p0}, Lcom/join/mgps/va/overmind/m$a;->delete(Ljava/lang/String;)V

    return-void
.end method
