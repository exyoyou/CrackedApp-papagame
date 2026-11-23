.class public final enum Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/miitmdid/content/ProviderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DEVICE_PROVIDER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum ASUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum BLACKSHARK:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum FREEMEOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum HUA_WEI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum LENOVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum MEIZU:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum MOTO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum NUBIA:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum ONEPLUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum OPPO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum SAMSUNG:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum SSUIOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum UNSUPPORT:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum VIVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum XIAOMI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum ZTE:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;


# instance fields
.field private index:I

.field private name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/4 v1, -0x1

    const-string v2, "unsupport"

    const-string v3, "UNSUPPORT"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->UNSUPPORT:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v1, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v2, "HUAWEI"

    const-string v3, "HUA_WEI"

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5, v4, v2}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->HUA_WEI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v3, "Xiaomi"

    const-string v6, "XIAOMI"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v5, v3}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->XIAOMI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v3, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v6, "vivo"

    const-string v8, "VIVO"

    const/4 v9, 0x3

    invoke-direct {v3, v8, v9, v7, v6}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->VIVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v6, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v8, "oppo"

    const-string v10, "OPPO"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v9, v8}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->OPPO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v8, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v10, "motorola"

    const-string v12, "MOTO"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v11, v10}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->MOTO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v10, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v12, "lenovo"

    const-string v14, "LENOVO"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v13, v12}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->LENOVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v12, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v14, "asus"

    const-string v13, "ASUS"

    const/4 v11, 0x7

    invoke-direct {v12, v13, v11, v15, v14}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ASUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v13, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v14, "samsung"

    const-string v15, "SAMSUNG"

    const/16 v9, 0x8

    invoke-direct {v13, v15, v9, v11, v14}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->SAMSUNG:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v14, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v15, "meizu"

    const-string v11, "MEIZU"

    const/16 v7, 0x9

    invoke-direct {v14, v11, v7, v9, v15}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v14, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->MEIZU:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v11, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v15, "nubia"

    const-string v7, "NUBIA"

    const/16 v9, 0xa

    invoke-direct {v11, v7, v9, v9, v15}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->NUBIA:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v7, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v15, "ZTE"

    const/16 v9, 0xb

    invoke-direct {v7, v15, v9, v9, v15}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ZTE:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v15, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v9, "OnePlus"

    const-string v5, "ONEPLUS"

    const/16 v4, 0xc

    invoke-direct {v15, v5, v4, v4, v9}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v15, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ONEPLUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v5, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v9, "blackshark"

    const-string v4, "BLACKSHARK"

    move-object/from16 v16, v15

    const/16 v15, 0xd

    invoke-direct {v5, v4, v15, v15, v9}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->BLACKSHARK:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v4, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v9, 0x1e

    const-string v15, "freemeos"

    move-object/from16 v17, v5

    const-string v5, "FREEMEOS"

    move-object/from16 v18, v7

    const/16 v7, 0xe

    invoke-direct {v4, v5, v7, v9, v15}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->FREEMEOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v5, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v9, 0x1f

    const-string v15, "ssui"

    const-string v7, "SSUIOS"

    move-object/from16 v19, v4

    const/16 v4, 0xf

    invoke-direct {v5, v7, v4, v9, v15}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->SSUIOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v7, 0x10

    new-array v7, v7, [Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/4 v9, 0x0

    aput-object v0, v7, v9

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v10, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v13, v7, v0

    const/16 v0, 0x9

    aput-object v14, v7, v0

    const/16 v0, 0xa

    aput-object v11, v7, v0

    const/16 v0, 0xb

    aput-object v18, v7, v0

    const/16 v0, 0xc

    aput-object v16, v7, v0

    const/16 v0, 0xd

    aput-object v17, v7, v0

    const/16 v0, 0xe

    aput-object v19, v7, v0

    aput-object v5, v7, v4

    sput-object v7, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->$VALUES:[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->index:I

    iput-object p4, p0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->UNSUPPORT:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->values()[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    iget-object v3, v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->name:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->UNSUPPORT:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;
    .locals 1

    const-class v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    return-object p0
.end method

.method public static values()[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;
    .locals 1

    sget-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->$VALUES:[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    invoke-virtual {v0}, [Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    return-object v0
.end method
