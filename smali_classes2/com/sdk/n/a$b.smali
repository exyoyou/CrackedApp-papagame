.class public abstract enum Lcom/sdk/n/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sdk/n/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sdk/n/a$b;

.field public static final enum b:Lcom/sdk/n/a$b;

.field public static final enum c:Lcom/sdk/n/a$b;

.field public static final enum d:Lcom/sdk/n/a$b;

.field public static final synthetic e:[Lcom/sdk/n/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/sdk/n/a$b$a;

    const-string v1, "WIFI_NET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sdk/n/a$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdk/n/a$b;->a:Lcom/sdk/n/a$b;

    new-instance v1, Lcom/sdk/n/a$b$b;

    const-string v3, "WIFI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sdk/n/a$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sdk/n/a$b;->b:Lcom/sdk/n/a$b;

    new-instance v3, Lcom/sdk/n/a$b$c;

    const-string v5, "NET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sdk/n/a$b$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sdk/n/a$b;->c:Lcom/sdk/n/a$b;

    new-instance v5, Lcom/sdk/n/a$b$d;

    const-string v7, "UNKNOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sdk/n/a$b$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sdk/n/a$b;->d:Lcom/sdk/n/a$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sdk/n/a$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sdk/n/a$b;->e:[Lcom/sdk/n/a$b;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/sdk/n/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sdk/n/a$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdk/n/a$b;
    .locals 1

    const-class v0, Lcom/sdk/n/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sdk/n/a$b;

    return-object p0
.end method

.method public static values()[Lcom/sdk/n/a$b;
    .locals 1

    sget-object v0, Lcom/sdk/n/a$b;->e:[Lcom/sdk/n/a$b;

    invoke-virtual {v0}, [Lcom/sdk/n/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdk/n/a$b;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method
