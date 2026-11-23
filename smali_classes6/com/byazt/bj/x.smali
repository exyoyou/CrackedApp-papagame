.class public final enum Lcom/byazt/bj/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/byazt/bj/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/byazt/bj/x;

.field public static final synthetic n:[Lcom/byazt/bj/x;

.field public static final enum tt:Lcom/byazt/bj/x;

.field public static final enum ve:Lcom/byazt/bj/x;


# instance fields
.field public final uj:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/bj/x;

    .line 2
    .line 3
    const-string v1, "UNDEFINED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/byazt/bj/x;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/byazt/bj/x;->c:Lcom/byazt/bj/x;

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/bj/x;

    .line 12
    .line 13
    const-string v1, "EXACTLY"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/byazt/bj/x;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/byazt/bj/x;->tt:Lcom/byazt/bj/x;

    .line 20
    .line 21
    new-instance v0, Lcom/byazt/bj/x;

    .line 22
    .line 23
    const-string v1, "AT_MOST"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/byazt/bj/x;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/byazt/bj/x;->ve:Lcom/byazt/bj/x;

    .line 30
    .line 31
    invoke-static {}, Lcom/byazt/bj/x;->c()[Lcom/byazt/bj/x;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/byazt/bj/x;->n:[Lcom/byazt/bj/x;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/byazt/bj/x;->uj:I

    .line 5
    .line 6
    return-void
.end method

.method public static c(I)Lcom/byazt/bj/x;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/byazt/bj/x;->ve:Lcom/byazt/bj/x;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown enum value: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p0, Lcom/byazt/bj/x;->tt:Lcom/byazt/bj/x;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lcom/byazt/bj/x;->c:Lcom/byazt/bj/x;

    return-object p0
.end method

.method private static synthetic c()[Lcom/byazt/bj/x;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/byazt/bj/x;

    const/4 v1, 0x0

    .line 1
    sget-object v2, Lcom/byazt/bj/x;->c:Lcom/byazt/bj/x;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/byazt/bj/x;->tt:Lcom/byazt/bj/x;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/byazt/bj/x;->ve:Lcom/byazt/bj/x;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/byazt/bj/x;
    .locals 1

    .line 1
    const-class v0, Lcom/byazt/bj/x;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/byazt/bj/x;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/byazt/bj/x;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/bj/x;->n:[Lcom/byazt/bj/x;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/byazt/bj/x;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/byazt/bj/x;

    .line 8
    .line 9
    return-object v0
.end method
