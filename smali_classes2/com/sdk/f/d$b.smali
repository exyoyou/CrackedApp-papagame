.class public abstract enum Lcom/sdk/f/d$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sdk/f/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sdk/f/d$b;

.field public static final enum b:Lcom/sdk/f/d$b;

.field public static final enum c:Lcom/sdk/f/d$b;

.field public static final synthetic d:[Lcom/sdk/f/d$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/sdk/f/d$b$a;

    const-string v1, "PRODUCE_STATISTICAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sdk/f/d$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdk/f/d$b;->a:Lcom/sdk/f/d$b;

    new-instance v1, Lcom/sdk/f/d$b$b;

    const-string v3, "PRODUCE_DZH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sdk/f/d$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sdk/f/d$b;->b:Lcom/sdk/f/d$b;

    new-instance v3, Lcom/sdk/f/d$b$c;

    const-string v5, "PRODUCE_TEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sdk/f/d$b$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sdk/f/d$b;->c:Lcom/sdk/f/d$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sdk/f/d$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sdk/f/d$b;->d:[Lcom/sdk/f/d$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/sdk/f/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sdk/f/d$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdk/f/d$b;
    .locals 1

    const-class v0, Lcom/sdk/f/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sdk/f/d$b;

    return-object p0
.end method

.method public static values()[Lcom/sdk/f/d$b;
    .locals 1

    sget-object v0, Lcom/sdk/f/d$b;->d:[Lcom/sdk/f/d$b;

    invoke-virtual {v0}, [Lcom/sdk/f/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdk/f/d$b;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method
