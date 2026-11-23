.class public final enum Lcom/sigmob/sdk/base/common/al$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/common/al$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/common/al$d;

.field public static final enum b:Lcom/sigmob/sdk/base/common/al$d;

.field public static final enum c:Lcom/sigmob/sdk/base/common/al$d;

.field public static final enum d:Lcom/sigmob/sdk/base/common/al$d;

.field private static final synthetic e:[Lcom/sigmob/sdk/base/common/al$d;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/sigmob/sdk/base/common/al$d;

    const-string v1, "SWING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/common/al$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/common/al$d;->a:Lcom/sigmob/sdk/base/common/al$d;

    new-instance v1, Lcom/sigmob/sdk/base/common/al$d;

    const-string v3, "WRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sigmob/sdk/base/common/al$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/sdk/base/common/al$d;->b:Lcom/sigmob/sdk/base/common/al$d;

    new-instance v3, Lcom/sigmob/sdk/base/common/al$d;

    const-string v5, "SLOPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sigmob/sdk/base/common/al$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sigmob/sdk/base/common/al$d;->c:Lcom/sigmob/sdk/base/common/al$d;

    new-instance v5, Lcom/sigmob/sdk/base/common/al$d;

    const-string v7, "SHAKE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sigmob/sdk/base/common/al$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sigmob/sdk/base/common/al$d;->d:Lcom/sigmob/sdk/base/common/al$d;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sigmob/sdk/base/common/al$d;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sigmob/sdk/base/common/al$d;->e:[Lcom/sigmob/sdk/base/common/al$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/al$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/sigmob/sdk/base/common/al$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/common/al$d;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/common/al$d;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/base/common/al$d;->e:[Lcom/sigmob/sdk/base/common/al$d;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/common/al$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/common/al$d;

    return-object v0
.end method
