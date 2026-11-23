.class public final Lcom/sdk/base/framework/utils/log/LiveDataBus3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/base/framework/utils/log/LiveDataBus3$SingletonHolder;
    }
.end annotation


# static fields
.field public static key:I


# instance fields
.field private final bus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sdk/base/framework/utils/log/LiveDataBus3;->bus:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sdk/base/framework/utils/log/LiveDataBus3$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sdk/base/framework/utils/log/LiveDataBus3;-><init>()V

    return-void
.end method

.method public static get()Lcom/sdk/base/framework/utils/log/LiveDataBus3;
    .locals 1

    invoke-static {}, Lcom/sdk/base/framework/utils/log/LiveDataBus3$SingletonHolder;->access$100()Lcom/sdk/base/framework/utils/log/LiveDataBus3;

    move-result-object v0

    return-object v0
.end method

.method public static init()Z
    .locals 1

    invoke-static {}, Lcom/sdk/base/framework/utils/log/LiveDataBus3$SingletonHolder;->access$100()Lcom/sdk/base/framework/utils/log/LiveDataBus3;

    move-result-object v0

    iget-object v0, v0, Lcom/sdk/base/framework/utils/log/LiveDataBus3;->bus:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    sput v0, Lcom/sdk/base/framework/utils/log/LiveDataBus3;->key:I

    const/4 v0, 0x1

    return v0
.end method

.method public static post(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sdk/base/framework/utils/log/LiveDataBus3$SingletonHolder;->access$100()Lcom/sdk/base/framework/utils/log/LiveDataBus3;

    move-result-object v0

    iget-object v0, v0, Lcom/sdk/base/framework/utils/log/LiveDataBus3;->bus:Ljava/util/Map;

    sget v1, Lcom/sdk/base/framework/utils/log/LiveDataBus3;->key:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/sdk/base/framework/utils/log/LiveDataBus3;->key:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static toStr(I)Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/sdk/base/framework/utils/log/LiveDataBus3$SingletonHolder;->access$100()Lcom/sdk/base/framework/utils/log/LiveDataBus3;

    move-result-object v0

    iget-object v0, v0, Lcom/sdk/base/framework/utils/log/LiveDataBus3;->bus:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const-string v2, "\n"

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "\n\u65f6\u95f4\u5dee="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x5

    add-int/2addr v5, v6

    const-string v7, "ms\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v5, :cond_0

    if-ltz v7, :cond_0

    if-le v7, v5, :cond_0

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v6, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v5, p0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n-----------------------\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method
