.class Lcom/haima/hmcp/beans/JoyStickMappingConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/beans/JoyStickMappingConfig;->sortMouseRefreshRatesByIntervalAsc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseRefreshRate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/beans/JoyStickMappingConfig;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/beans/JoyStickMappingConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/JoyStickMappingConfig$1;->this$0:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public compare(Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseRefreshRate;Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseRefreshRate;)I
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, -0x1

    if-nez p2, :cond_2

    return v2

    .line 2
    :cond_2
    iget-object p1, p1, Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseRefreshRate;->interval:Ljava/lang/Double;

    .line 3
    iget-object p2, p2, Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseRefreshRate;->interval:Ljava/lang/Double;

    if-ne p1, p2, :cond_3

    return v0

    :cond_3
    if-nez p1, :cond_4

    return v1

    :cond_4
    if-nez p2, :cond_5

    return v2

    .line 4
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseRefreshRate;

    check-cast p2, Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseRefreshRate;

    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/beans/JoyStickMappingConfig$1;->compare(Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseRefreshRate;Lcom/haima/hmcp/beans/JoyStickMappingConfig$MouseRefreshRate;)I

    move-result p1

    return p1
.end method
