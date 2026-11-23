.class public final enum Lcom/byazt/bj/ve;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/byazt/bj/ve;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/byazt/bj/ve;

.field public static final synthetic n:[Lcom/byazt/bj/ve;

.field public static final enum tt:Lcom/byazt/bj/ve;

.field public static final enum ve:Lcom/byazt/bj/ve;


# instance fields
.field public final uj:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/bj/ve;

    .line 2
    .line 3
    const-string v1, "INHERIT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/byazt/bj/ve;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/byazt/bj/ve;->c:Lcom/byazt/bj/ve;

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/bj/ve;

    .line 12
    .line 13
    const-string v1, "LTR"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/byazt/bj/ve;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/byazt/bj/ve;->tt:Lcom/byazt/bj/ve;

    .line 20
    .line 21
    new-instance v0, Lcom/byazt/bj/ve;

    .line 22
    .line 23
    const-string v1, "RTL"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/byazt/bj/ve;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/byazt/bj/ve;->ve:Lcom/byazt/bj/ve;

    .line 30
    .line 31
    invoke-static {}, Lcom/byazt/bj/ve;->tt()[Lcom/byazt/bj/ve;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/byazt/bj/ve;->n:[Lcom/byazt/bj/ve;

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
    iput p3, p0, Lcom/byazt/bj/ve;->uj:I

    .line 5
    .line 6
    return-void
.end method

.method private static synthetic tt()[Lcom/byazt/bj/ve;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/byazt/bj/ve;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/byazt/bj/ve;->c:Lcom/byazt/bj/ve;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    sget-object v2, Lcom/byazt/bj/ve;->tt:Lcom/byazt/bj/ve;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    sget-object v2, Lcom/byazt/bj/ve;->ve:Lcom/byazt/bj/ve;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/byazt/bj/ve;
    .locals 1

    .line 1
    const-class v0, Lcom/byazt/bj/ve;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/byazt/bj/ve;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/byazt/bj/ve;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/bj/ve;->n:[Lcom/byazt/bj/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/byazt/bj/ve;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/byazt/bj/ve;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/bj/ve;->uj:I

    .line 2
    .line 3
    return v0
.end method
