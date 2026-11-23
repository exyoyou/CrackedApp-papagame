.class public final Lcom/zyyoona7/wheel/formatter/a;
.super Lcom/zyyoona7/wheel/formatter/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zyyoona7/wheel/formatter/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zyyoona7/wheel/formatter/b<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "%d"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/lang/String; = "%02d"

.field public static final d:Lcom/zyyoona7/wheel/formatter/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zyyoona7/wheel/formatter/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zyyoona7/wheel/formatter/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/zyyoona7/wheel/formatter/a;->d:Lcom/zyyoona7/wheel/formatter/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/zyyoona7/wheel/formatter/a;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/zyyoona7/wheel/formatter/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "%02d"

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/zyyoona7/wheel/formatter/a;-><init>(Ljava/lang/String;)V

    return-void
.end method
