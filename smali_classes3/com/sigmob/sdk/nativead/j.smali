.class public final enum Lcom/sigmob/sdk/nativead/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/nativead/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/nativead/j;

.field public static final enum b:Lcom/sigmob/sdk/nativead/j;

.field public static final enum c:Lcom/sigmob/sdk/nativead/j;

.field private static final synthetic d:[Lcom/sigmob/sdk/nativead/j;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/sigmob/sdk/nativead/j;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/nativead/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/nativead/j;->a:Lcom/sigmob/sdk/nativead/j;

    new-instance v1, Lcom/sigmob/sdk/nativead/j;

    const-string v3, "DETAIL_PAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sigmob/sdk/nativead/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/sdk/nativead/j;->b:Lcom/sigmob/sdk/nativead/j;

    new-instance v3, Lcom/sigmob/sdk/nativead/j;

    const-string v5, "DETAIL_PAGE_END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sigmob/sdk/nativead/j;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sigmob/sdk/nativead/j;->c:Lcom/sigmob/sdk/nativead/j;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sigmob/sdk/nativead/j;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sigmob/sdk/nativead/j;->d:[Lcom/sigmob/sdk/nativead/j;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/nativead/j;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/sigmob/sdk/nativead/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/nativead/j;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/nativead/j;
    .locals 1

    sget-object v0, Lcom/sigmob/sdk/nativead/j;->d:[Lcom/sigmob/sdk/nativead/j;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/nativead/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/nativead/j;

    return-object v0
.end method
