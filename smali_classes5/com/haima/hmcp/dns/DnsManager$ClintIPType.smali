.class public final enum Lcom/haima/hmcp/dns/DnsManager$ClintIPType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/dns/DnsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClintIPType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/haima/hmcp/dns/DnsManager$ClintIPType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

.field public static final enum IPV4:Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

.field public static final enum IPV6:Lcom/haima/hmcp/dns/DnsManager$ClintIPType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 2
    .line 3
    const-string v1, "IPV4"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/haima/hmcp/dns/DnsManager$ClintIPType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/haima/hmcp/dns/DnsManager$ClintIPType;->IPV4:Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 13
    .line 14
    const-string v4, "IPV6"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/haima/hmcp/dns/DnsManager$ClintIPType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/haima/hmcp/dns/DnsManager$ClintIPType;->IPV6:Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 21
    .line 22
    new-array v4, v5, [Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 23
    .line 24
    aput-object v0, v4, v2

    .line 25
    .line 26
    aput-object v1, v4, v3

    .line 27
    .line 28
    sput-object v4, Lcom/haima/hmcp/dns/DnsManager$ClintIPType;->$VALUES:[Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 29
    .line 30
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
    iput p3, p0, Lcom/haima/hmcp/dns/DnsManager$ClintIPType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/haima/hmcp/dns/DnsManager$ClintIPType;
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/haima/hmcp/dns/DnsManager$ClintIPType;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/dns/DnsManager$ClintIPType;->$VALUES:[Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/haima/hmcp/dns/DnsManager$ClintIPType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/haima/hmcp/dns/DnsManager$ClintIPType;

    .line 8
    .line 9
    return-object v0
.end method
