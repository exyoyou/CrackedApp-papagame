.class public Lcom/byazt/ete/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x3b9
    }
.end annotation


# static fields
.field public static c:I = 0x0

.field public static tt:I = 0x0

.field public static ve:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static c(II)I
    .locals 3

    .line 6
    sget v0, Lcom/byazt/ete/f;->c:I

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    .line 7
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v2, Lcom/byazt/ete/f;->c:I

    if-le v0, v2, :cond_1

    return v1

    :cond_1
    if-eqz p0, :cond_4

    if-nez p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    sget v0, Lcom/byazt/ete/f;->tt:I

    if-ge p0, v0, :cond_3

    if-ge p1, v0, :cond_3

    return v1

    .line 9
    :cond_3
    sget p0, Lcom/byazt/ete/f;->ve:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public static c(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "app_common_config"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "ugen_image_load_config"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "api"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/f;->c:I

    const-string v0, "size_limit"

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/f;->tt:I

    const-string v0, "zip_level"

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/byazt/ete/f;->ve:I

    :cond_0
    return-void
.end method
