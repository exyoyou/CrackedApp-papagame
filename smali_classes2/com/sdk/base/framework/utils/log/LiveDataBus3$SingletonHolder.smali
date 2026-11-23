.class public Lcom/sdk/base/framework/utils/log/LiveDataBus3$SingletonHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/base/framework/utils/log/LiveDataBus3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final DEFAULT_BUS:Lcom/sdk/base/framework/utils/log/LiveDataBus3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sdk/base/framework/utils/log/LiveDataBus3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sdk/base/framework/utils/log/LiveDataBus3;-><init>(Lcom/sdk/base/framework/utils/log/LiveDataBus3$1;)V

    sput-object v0, Lcom/sdk/base/framework/utils/log/LiveDataBus3$SingletonHolder;->DEFAULT_BUS:Lcom/sdk/base/framework/utils/log/LiveDataBus3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/sdk/base/framework/utils/log/LiveDataBus3;
    .locals 1

    sget-object v0, Lcom/sdk/base/framework/utils/log/LiveDataBus3$SingletonHolder;->DEFAULT_BUS:Lcom/sdk/base/framework/utils/log/LiveDataBus3;

    return-object v0
.end method
