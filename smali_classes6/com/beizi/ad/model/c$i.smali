.class public Lcom/beizi/ad/model/c$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/ad/model/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beizi/ad/model/c$j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 7
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    const-string p0, "UTF-8"

    .line 9
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {p0}, Lcom/beizi/ad/model/c$i;->b(Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b(Lorg/json/JSONArray;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Ljava/lang/String;)Lcom/beizi/ad/model/c$i;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v1, "blackListInfo"

    const-string v2, "unconventionalNative"

    const-string v3, "customData"

    const-string v4, "secondPrice"

    const-string v5, "winPriceMax"

    const-string v6, "winPriceMin"

    const-string v7, "endNotification"

    const-string v8, "isLastLook"

    const-string v9, "auctionType"

    const-string v10, "effectRate"

    const-string v11, "totalSecondPrice"

    const-string v12, "raiseSortPrice"

    const-string v13, "totalPrice"

    const-string v14, "auctionStrategy"

    .line 2
    invoke-static {}, Lcom/beizi/ad/lance/a/m;->a()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    invoke-static {v15, v1}, Lcom/beizi/ad/lance/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    const-string v2, "decryptStr = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "ServerResponse"

    invoke-static {v15, v2}, Lcom/beizi/ad/lance/a/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/beizi/ad/model/c$i;

    invoke-direct {v1}, Lcom/beizi/ad/model/c$i;-><init>()V

    move-object/from16 p0, v15

    :try_start_0
    const-string v15, "errcode"

    .line 6
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/beizi/ad/model/c$i;->a(Ljava/lang/String;)V

    const-string v15, "errmsg"

    .line 7
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/beizi/ad/model/c$i;->b(Ljava/lang/String;)V

    const-string v15, "status"

    .line 8
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v1, v15}, Lcom/beizi/ad/model/c$i;->a(I)V

    const-string v15, "ts"

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 9
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/beizi/ad/model/c$i;->a(J)V

    const-string v5, "spaceInfo"

    .line 10
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-static {v2}, Lcom/beizi/ad/model/c$i;->b(Lorg/json/JSONArray;)Z

    move-result v6

    if-eqz v6, :cond_3c

    const/4 v15, 0x0

    .line 13
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1f

    if-ge v15, v6, :cond_3b

    .line 14
    :try_start_1
    new-instance v6, Lcom/beizi/ad/model/c$j;

    invoke-direct {v6}, Lcom/beizi/ad/model/c$j;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1e

    move-object/from16 v20, v1

    .line 15
    :try_start_2
    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3a

    move-object/from16 v21, v2

    const-string v2, "spaceID"

    .line 16
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/beizi/ad/model/c$j;->a(Ljava/lang/String;)V

    const-string v2, "adpType"

    .line 17
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/beizi/ad/model/i$a;->a(I)Lcom/beizi/ad/model/i$a;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/beizi/ad/model/c$j;->a(Lcom/beizi/ad/model/i$a;)V

    const-string v2, "refreshInterval"

    .line 18
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/beizi/ad/model/c$j;->a(I)V

    const-string v2, "autoClose"

    .line 19
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/beizi/ad/model/c$j;->a(Z)V

    const-string v2, "maxTime"

    .line 20
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/beizi/ad/model/c$j;->b(I)V

    const-string v2, "minTime"

    .line 21
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/beizi/ad/model/c$j;->c(I)V

    const-string v2, "mute"

    .line 22
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/beizi/ad/model/c$j;->b(Z)V

    const-string v2, "autoPlay"

    .line 23
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/beizi/ad/model/c$j;->c(Z)V

    const-string v2, "adResponse"

    .line 24
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move/from16 v22, v15

    .line 25
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {v2}, Lcom/beizi/ad/model/c$i;->b(Lorg/json/JSONArray;)Z

    move-result v23
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1d

    move-object/from16 v24, v5

    const-string v5, "lpOptimize"

    move-object/from16 v25, v7

    const-string v7, "optimize"

    move-object/from16 v26, v11

    const-string v11, "notification"

    move-object/from16 v27, v13

    const-string v13, "complianceSensor"

    move-object/from16 v28, v3

    const-string v3, "rewardedVideo"

    if-eqz v23, :cond_27

    move-object/from16 v23, v8

    move-object/from16 v29, v9

    const/4 v8, 0x0

    .line 27
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_26

    .line 28
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_25

    move-object/from16 v30, v2

    .line 29
    new-instance v2, Lcom/beizi/ad/model/c$d;

    invoke-direct {v2}, Lcom/beizi/ad/model/c$d;-><init>()V

    move-object/from16 v31, v10

    const-string v10, "extInfo"

    .line 30
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/beizi/ad/model/c$d;->a(Ljava/lang/String;)V

    const-string v10, "adid"

    .line 31
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/beizi/ad/model/c$d;->b(Ljava/lang/String;)V

    const-string v10, "contentInfo"

    .line 32
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    move-object/from16 v32, v12

    .line 33
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->b(Lorg/json/JSONArray;)Z

    move-result v33

    if-eqz v33, :cond_5

    move-object/from16 v33, v1

    move-object/from16 v34, v14

    const/4 v1, 0x0

    .line 35
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v1, v14, :cond_4

    .line 36
    invoke-virtual {v10, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_3

    move-object/from16 v35, v10

    .line 37
    new-instance v10, Lcom/beizi/ad/model/c$a;

    invoke-direct {v10}, Lcom/beizi/ad/model/c$a;-><init>()V

    move-object/from16 v36, v6

    const-string v6, "template"

    .line 38
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/beizi/ad/model/c$a;->a(Ljava/lang/String;)V

    const-string v6, "renderType"

    .line 39
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/beizi/ad/model/i$f;->a(I)Lcom/beizi/ad/model/i$f;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/beizi/ad/model/c$a;->a(Lcom/beizi/ad/model/i$f;)V

    const-string v6, "adcontentSlot"

    .line 40
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 41
    invoke-static {v6}, Lcom/beizi/ad/model/c$i;->b(Lorg/json/JSONArray;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 42
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move/from16 v37, v8

    move-object/from16 v38, v15

    const/4 v8, 0x0

    .line 43
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v8, v15, :cond_1

    .line 44
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v39, v6

    .line 45
    new-instance v6, Lcom/beizi/ad/model/c$f;

    invoke-direct {v6}, Lcom/beizi/ad/model/c$f;-><init>()V

    move-object/from16 v40, v5

    const-string v5, "md5"

    .line 46
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/beizi/ad/model/c$f;->a(Ljava/lang/String;)V

    const-string v5, "content"

    .line 47
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/beizi/ad/model/c$f;->b(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_0
    move-object/from16 v40, v5

    move-object/from16 v39, v6

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v39

    move-object/from16 v5, v40

    goto :goto_3

    :cond_1
    move-object/from16 v40, v5

    .line 49
    invoke-virtual {v10, v14}, Lcom/beizi/ad/model/c$a;->a(Ljava/util/List;)V

    goto :goto_5

    :cond_2
    move-object/from16 v40, v5

    move/from16 v37, v8

    move-object/from16 v38, v15

    .line 50
    :goto_5
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_3
    move-object/from16 v40, v5

    move-object/from16 v36, v6

    move/from16 v37, v8

    move-object/from16 v35, v10

    move-object/from16 v38, v15

    :goto_6
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v10, v35

    move-object/from16 v6, v36

    move/from16 v8, v37

    move-object/from16 v15, v38

    move-object/from16 v5, v40

    goto/16 :goto_2

    :cond_4
    move-object/from16 v40, v5

    move-object/from16 v36, v6

    move/from16 v37, v8

    move-object/from16 v38, v15

    .line 51
    invoke-virtual {v2, v12}, Lcom/beizi/ad/model/c$d;->a(Ljava/util/List;)V

    goto :goto_7

    :cond_5
    move-object/from16 v33, v1

    move-object/from16 v40, v5

    move-object/from16 v36, v6

    move/from16 v37, v8

    move-object/from16 v34, v14

    move-object/from16 v38, v15

    :goto_7
    const-string v1, "adLogo"

    .line 52
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 53
    new-instance v5, Lcom/beizi/ad/model/c$c;

    invoke-direct {v5}, Lcom/beizi/ad/model/c$c;-><init>()V

    const-string v6, "adLabel"

    .line 54
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/c$c;->b(Ljava/lang/String;)V

    const-string v6, "adLabelUrl"

    .line 55
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/c$c;->a(Ljava/lang/String;)V

    const-string v6, "sourceLabel"

    .line 56
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/c$c;->d(Ljava/lang/String;)V

    const-string v6, "sourceUrl"

    .line 57
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/beizi/ad/model/c$c;->c(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2, v5}, Lcom/beizi/ad/model/c$d;->a(Lcom/beizi/ad/model/c$c;)V

    :cond_6
    const-string v1, "price"

    .line 59
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/beizi/ad/model/c$d;->c(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 61
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/beizi/ad/model/c$d;->d(Ljava/lang/String;)V

    .line 62
    :cond_7
    new-instance v1, Lcom/beizi/ad/model/c$b;

    invoke-direct {v1}, Lcom/beizi/ad/model/c$b;-><init>()V

    const-string v5, "interactInfo"

    .line 63
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_14

    const-string v6, "thirdpartInfo"

    .line 64
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 65
    invoke-static {v6}, Lcom/beizi/ad/model/c$i;->b(Lorg/json/JSONArray;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 66
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 67
    :goto_8
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v10, v12, :cond_9

    .line 68
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 69
    new-instance v14, Lcom/beizi/ad/model/c$h;

    invoke-direct {v14}, Lcom/beizi/ad/model/c$h;-><init>()V

    const-string v15, "clickUrl"

    .line 70
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/beizi/ad/model/c$h;->b(Ljava/lang/String;)V

    const-string v15, "viewUrl"

    .line 71
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/beizi/ad/model/c$h;->a(Ljava/lang/String;)V

    const-string v15, "convertUrl"

    .line 72
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/beizi/ad/model/c$h;->c(Ljava/lang/String;)V

    const-string v15, "onFinish"

    .line 73
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/beizi/ad/model/c$h;->g(Ljava/lang/String;)V

    const-string v15, "onPause"

    .line 74
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/beizi/ad/model/c$h;->e(Ljava/lang/String;)V

    const-string v15, "onRecover"

    .line 75
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/beizi/ad/model/c$h;->f(Ljava/lang/String;)V

    const-string v15, "onStart"

    .line 76
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/beizi/ad/model/c$h;->d(Ljava/lang/String;)V

    const-string v15, "percent25"

    .line 77
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/beizi/ad/model/c$h;->h(Ljava/lang/String;)V

    const-string v15, "percent50"

    .line 78
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/beizi/ad/model/c$h;->i(Ljava/lang/String;)V

    const-string v15, "percent75"

    .line 79
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/beizi/ad/model/c$h;->j(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 81
    :cond_9
    invoke-virtual {v1, v8}, Lcom/beizi/ad/model/c$b;->a(Ljava/util/List;)V

    :cond_a
    const-string v6, "apkName"

    .line 82
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->c(Ljava/lang/String;)V

    const-string v6, "appDesc"

    .line 83
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->f(Ljava/lang/String;)V

    const-string v6, "appVersion"

    .line 84
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->h(Ljava/lang/String;)V

    const-string v6, "appDeveloper"

    .line 85
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->i(Ljava/lang/String;)V

    const-string v6, "appPermissionsDesc"

    .line 86
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->j(Ljava/lang/String;)V

    const-string v6, "appPermissionsUrl"

    .line 87
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->k(Ljava/lang/String;)V

    const-string v6, "appPrivacyUrl"

    .line 88
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->l(Ljava/lang/String;)V

    const-string v6, "appIconURL"

    .line 89
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->m(Ljava/lang/String;)V

    const-string v6, "appintro"

    .line 90
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->n(Ljava/lang/String;)V

    const-string v6, "appDownloadURL"

    .line 91
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->g(Ljava/lang/String;)V

    const-string v6, "appStoreID"

    .line 92
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->e(Ljava/lang/String;)V

    const-string v6, "landingPageUrl"

    .line 93
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->a(Ljava/lang/String;)V

    const-string v6, "deeplinkUrl"

    .line 94
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->b(Ljava/lang/String;)V

    const-string v6, "interactType"

    .line 95
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->a(I)V

    const-string v6, "packageName"

    .line 96
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->d(Ljava/lang/String;)V

    const-string v6, "useBuiltInBrow"

    .line 97
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->a(Z)V

    const-string v6, "openExternal"

    .line 98
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->b(I)V

    const-string v6, "followTrackExt"

    .line 99
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 100
    new-instance v8, Lcom/beizi/ad/model/c$b$b;

    invoke-direct {v8}, Lcom/beizi/ad/model/c$b$b;-><init>()V

    if-eqz v6, :cond_b

    const-string v10, "open"

    .line 101
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 102
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 103
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->a(Ljava/util/List;)V

    const-string v10, "beginDownload"

    .line 104
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 105
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 106
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->b(Ljava/util/List;)V

    const-string v10, "download"

    .line 107
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 108
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 109
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->c(Ljava/util/List;)V

    const-string v10, "beginInstall"

    .line 110
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 111
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 112
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->d(Ljava/util/List;)V

    const-string v10, "install"

    .line 113
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 114
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 115
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->e(Ljava/util/List;)V

    const-string v10, "active"

    .line 116
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 117
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 118
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->f(Ljava/util/List;)V

    const-string v10, "close"

    .line 119
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 120
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 121
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->g(Ljava/util/List;)V

    const-string v10, "showSlide"

    .line 122
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 123
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 124
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->h(Ljava/util/List;)V

    const-string v10, "pageClose"

    .line 125
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 126
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 127
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->j(Ljava/util/List;)V

    const-string v10, "pageLoad"

    .line 128
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 129
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 130
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->i(Ljava/util/List;)V

    const-string v10, "pageAction"

    .line 131
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 132
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 133
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->k(Ljava/util/List;)V

    const-string v10, "deepLinkSuccess"

    .line 134
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 135
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 136
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->l(Ljava/util/List;)V

    const-string v10, "realDeepLinkSuccess"

    .line 137
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 138
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 139
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->m(Ljava/util/List;)V

    const-string v10, "deepLinkFail"

    .line 140
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 141
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 142
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->n(Ljava/util/List;)V

    const-string v10, "dpAppInstalled"

    .line 143
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 144
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 145
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->o(Ljava/util/List;)V

    const-string v10, "dpAppNotInstalled"

    .line 146
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 147
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 148
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->p(Ljava/util/List;)V

    .line 149
    invoke-virtual {v1, v8}, Lcom/beizi/ad/model/c$b;->a(Lcom/beizi/ad/model/c$b$b;)V

    const-string v10, "realDeepLinkFail"

    .line 150
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 151
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 152
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$b;->q(Ljava/util/List;)V

    const-string v10, "miniProgramOpen"

    .line 153
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 154
    invoke-static {v6}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v6

    .line 155
    invoke-virtual {v8, v6}, Lcom/beizi/ad/model/c$b$b;->r(Ljava/util/List;)V

    :cond_b
    const-string v6, "videoTrackExt"

    .line 156
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 157
    new-instance v8, Lcom/beizi/ad/model/c$b$c;

    invoke-direct {v8}, Lcom/beizi/ad/model/c$b$c;-><init>()V

    if-eqz v6, :cond_f

    const-string v10, "start"

    .line 158
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 159
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 160
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$c;->a(Ljava/util/List;)V

    const-string v10, "pause"

    .line 161
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 162
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 163
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$c;->b(Ljava/util/List;)V

    const-string v10, "continue"

    .line 164
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 165
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 166
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$c;->c(Ljava/util/List;)V

    const-string v10, "exit"

    .line 167
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 168
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 169
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$c;->d(Ljava/util/List;)V

    const-string v10, "complete"

    .line 170
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 171
    invoke-static {v10}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 172
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$c;->e(Ljava/util/List;)V

    const-string v10, "showTrack"

    .line 173
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 174
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-static {v6}, Lcom/beizi/ad/model/c$i;->b(Lorg/json/JSONArray;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v12, 0x0

    .line 176
    :goto_9
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_d

    .line 177
    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 178
    new-instance v15, Lcom/beizi/ad/model/c$b$c$a;

    invoke-direct {v15}, Lcom/beizi/ad/model/c$b$c$a;-><init>()V

    move-object/from16 v35, v4

    const-string v4, "t"

    .line 179
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v4}, Lcom/beizi/ad/model/c$b$c$a;->a(I)V

    const-string v4, "url"

    .line 180
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 181
    invoke-static {v4}, Lcom/beizi/ad/model/c$i;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    .line 182
    invoke-virtual {v15, v4}, Lcom/beizi/ad/model/c$b$c$a;->a(Ljava/util/List;)V

    .line 183
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_c
    move-object/from16 v35, v4

    :goto_a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v35

    goto :goto_9

    :cond_d
    move-object/from16 v35, v4

    .line 184
    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$b$c;->f(Ljava/util/List;)V

    goto :goto_b

    :cond_e
    move-object/from16 v35, v4

    .line 185
    :goto_b
    invoke-virtual {v1, v8}, Lcom/beizi/ad/model/c$b;->a(Lcom/beizi/ad/model/c$b$c;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1d

    goto :goto_c

    :cond_f
    move-object/from16 v35, v4

    :goto_c
    :try_start_4
    const-string v4, "ext"

    .line 186
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "ext"

    .line 187
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 188
    new-instance v6, Lcom/beizi/ad/model/c$b$a;

    invoke-direct {v6}, Lcom/beizi/ad/model/c$b$a;-><init>()V

    if-eqz v4, :cond_13

    const-string v8, "canJumpStore"

    .line 189
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "canJumpStore"

    .line 190
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/beizi/ad/model/c$b$a;->a(I)V

    :cond_10
    const-string v8, "isCloseConfirm"

    .line 191
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, "isCloseConfirm"

    .line 192
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/beizi/ad/model/c$b$a;->b(I)V

    :cond_11
    const-string v8, "webDeepLink"

    .line 193
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "webDeepLink"

    .line 194
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/beizi/ad/model/c$b$a;->c(I)V

    .line 195
    :cond_12
    invoke-virtual {v1, v6}, Lcom/beizi/ad/model/c$b;->a(Lcom/beizi/ad/model/c$b$a;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 196
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_d
    const-string v4, "miniProgramId"

    .line 197
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/beizi/ad/model/c$b;->o(Ljava/lang/String;)V

    const-string v4, "miniProgramPath"

    .line 198
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/beizi/ad/model/c$b;->p(Ljava/lang/String;)V

    const-string v4, "miniProgramExt"

    .line 199
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/beizi/ad/model/c$b;->q(Ljava/lang/String;)V

    const-string v4, "wechat_canvas"

    .line 200
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/beizi/ad/model/c$b;->r(Ljava/lang/String;)V

    const-string v4, "isMiniProgram"

    .line 201
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/beizi/ad/model/c$b;->c(I)V

    .line 202
    invoke-virtual {v2, v1}, Lcom/beizi/ad/model/c$d;->a(Lcom/beizi/ad/model/c$b;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1d

    goto :goto_e

    :cond_14
    move-object/from16 v35, v4

    :goto_e
    :try_start_6
    const-string v1, "sensor"

    .line 203
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v1, :cond_18

    :try_start_7
    const-string v1, "sensor"

    .line 204
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 205
    new-instance v4, Lcom/beizi/ad/model/c$e;

    invoke-direct {v4}, Lcom/beizi/ad/model/c$e;-><init>()V

    const-string v5, "forceUnreal"

    .line 206
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "forceUnreal"

    .line 207
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/beizi/ad/model/c$e;->a(Z)V

    :cond_15
    const-string v5, "maxAcc"

    .line 208
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "maxAcc"

    .line 209
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/beizi/ad/model/c$e;->a(D)V

    :cond_16
    const-string v5, "angle"

    .line 210
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "angle"

    .line 211
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/beizi/ad/model/c$e;->b(D)V

    .line 212
    :cond_17
    invoke-virtual {v2, v4}, Lcom/beizi/ad/model/c$d;->a(Lcom/beizi/ad/model/c$e;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object/from16 v1, v40

    goto/16 :goto_12

    .line 213
    :cond_18
    :goto_f
    :try_start_8
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    if-eqz v1, :cond_19

    .line 214
    :try_start_9
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 215
    invoke-static {v1}, Lcom/beizi/ad/model/c;->b(Lorg/json/JSONObject;)Lcom/beizi/ad/model/h;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 216
    invoke-virtual {v2, v1}, Lcom/beizi/ad/model/c$d;->a(Lcom/beizi/ad/model/h;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 217
    :cond_19
    :try_start_a
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    if-eqz v1, :cond_1a

    .line 218
    :try_start_b
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 219
    invoke-static {v1}, Lcom/beizi/ad/model/c;->c(Lorg/json/JSONObject;)Lcom/beizi/ad/model/a/f;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 220
    invoke-virtual {v2, v1}, Lcom/beizi/ad/model/c$d;->a(Lcom/beizi/ad/model/a/f;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 221
    :cond_1a
    :try_start_c
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    if-eqz v1, :cond_1b

    .line 222
    :try_start_d
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 223
    invoke-static {v1}, Lcom/beizi/ad/model/c;->d(Lorg/json/JSONObject;)Lcom/beizi/ad/model/l;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 224
    invoke-virtual {v2, v1}, Lcom/beizi/ad/model/c$d;->a(Lcom/beizi/ad/model/l;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 225
    :cond_1b
    :try_start_e
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    if-eqz v1, :cond_1c

    .line 226
    :try_start_f
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 227
    invoke-static {v1}, Lcom/beizi/ad/model/c;->e(Lorg/json/JSONObject;)Lcom/beizi/ad/model/m;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 228
    invoke-virtual {v2, v1}, Lcom/beizi/ad/model/c$d;->a(Lcom/beizi/ad/model/m;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    :cond_1c
    move-object/from16 v1, v40

    .line 229
    :try_start_10
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 230
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 231
    invoke-static {v4}, Lcom/beizi/ad/model/c;->f(Lorg/json/JSONObject;)Lcom/beizi/ad/model/j;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 232
    invoke-virtual {v2, v4}, Lcom/beizi/ad/model/c$d;->a(Lcom/beizi/ad/model/j;)V

    :cond_1d
    const-string v4, "showType"

    .line 233
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "showType"

    .line 234
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/beizi/ad/model/c$d;->b(I)V

    :cond_1e
    const-string v4, "shake"

    .line 235
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "shake"

    .line 236
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 237
    invoke-static {v4}, Lcom/beizi/ad/model/c;->g(Lorg/json/JSONObject;)Lcom/beizi/ad/model/o;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 238
    invoke-virtual {v2, v4}, Lcom/beizi/ad/model/c$d;->a(Lcom/beizi/ad/model/o;)V

    :cond_1f
    const-string v4, "closePosition"

    .line 239
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "closePosition"

    .line 240
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 241
    invoke-static {v4}, Lcom/beizi/ad/model/c;->h(Lorg/json/JSONObject;)Lcom/beizi/ad/model/n;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 242
    invoke-virtual {v2, v4}, Lcom/beizi/ad/model/c$d;->a(Lcom/beizi/ad/model/n;)V

    :cond_20
    const-string v4, "chartlet"

    .line 243
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "chartlet"

    .line 244
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 245
    invoke-static {v4}, Lcom/beizi/ad/model/c$i;->b(Lorg/json/JSONArray;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 246
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 247
    :goto_10
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_22

    .line 248
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 249
    invoke-static {v8}, Lcom/beizi/ad/model/c;->i(Lorg/json/JSONObject;)Lcom/beizi/ad/model/e;

    move-result-object v8

    if-eqz v8, :cond_21

    .line 250
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 251
    :cond_22
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_23

    .line 252
    invoke-virtual {v2, v5}, Lcom/beizi/ad/model/c$d;->b(Ljava/util/List;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_13

    :catch_2
    move-exception v0

    goto :goto_11

    :catch_3
    move-exception v0

    move-object/from16 v1, v40

    :goto_11
    move-object v4, v0

    .line 253
    :goto_12
    :try_start_11
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_23
    :goto_13
    const-string v4, "expireSec"

    .line 254
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "expireSec"

    .line 255
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/beizi/ad/model/c$d;->a(I)V

    :cond_24
    const-string v4, "requestUUID"

    .line 256
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/beizi/ad/model/c$d;->e(Ljava/lang/String;)V

    const-string v4, "orderId"

    .line 257
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/beizi/ad/model/c$d;->f(Ljava/lang/String;)V

    const-string v4, "adxCrid"

    .line 258
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/beizi/ad/model/c$d;->g(Ljava/lang/String;)V

    move-object/from16 v4, v38

    .line 259
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_25
    move-object/from16 v33, v1

    move-object/from16 v30, v2

    move-object/from16 v35, v4

    move-object v1, v5

    move-object/from16 v36, v6

    move/from16 v37, v8

    move-object/from16 v31, v10

    move-object/from16 v32, v12

    move-object/from16 v34, v14

    move-object v4, v15

    :goto_14
    add-int/lit8 v8, v37, 0x1

    move-object v5, v1

    move-object v15, v4

    move-object/from16 v2, v30

    move-object/from16 v10, v31

    move-object/from16 v12, v32

    move-object/from16 v1, v33

    move-object/from16 v14, v34

    move-object/from16 v4, v35

    move-object/from16 v6, v36

    goto/16 :goto_1

    :cond_26
    move-object/from16 v33, v1

    move-object/from16 v35, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v31, v10

    move-object/from16 v32, v12

    move-object/from16 v34, v14

    move-object v4, v15

    .line 260
    invoke-virtual {v2, v4}, Lcom/beizi/ad/model/c$j;->a(Ljava/util/List;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_1d

    goto :goto_15

    :cond_27
    move-object/from16 v33, v1

    move-object/from16 v35, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v23, v8

    move-object/from16 v29, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v12

    move-object/from16 v34, v14

    :goto_15
    move-object/from16 v4, v33

    move-object/from16 v5, v34

    .line 261
    :try_start_12
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 262
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_2f

    .line 263
    new-instance v8, Lcom/beizi/ad/model/c$g;

    invoke-direct {v8}, Lcom/beizi/ad/model/c$g;-><init>()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_11

    move-object/from16 v9, v32

    .line 264
    :try_start_13
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    if-eqz v10, :cond_28

    .line 265
    :try_start_14
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/beizi/ad/model/c$g;->a(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    goto :goto_16

    :catch_4
    move-exception v0

    move-object v6, v0

    move-object/from16 v34, v5

    move-object/from16 v32, v9

    move-object/from16 v5, v18

    move-object/from16 v15, v19

    move-object/from16 v14, v23

    move-object/from16 v9, v28

    move-object/from16 v12, v29

    move-object/from16 v10, v31

    goto/16 :goto_20

    :cond_28
    :goto_16
    move-object/from16 v10, v31

    .line 266
    :try_start_15
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f

    if-eqz v12, :cond_29

    .line 267
    :try_start_16
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/beizi/ad/model/c$g;->b(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_5

    goto :goto_17

    :catch_5
    move-exception v0

    move-object v6, v0

    move-object/from16 v34, v5

    move-object/from16 v32, v9

    move-object/from16 v5, v18

    move-object/from16 v15, v19

    move-object/from16 v14, v23

    move-object/from16 v9, v28

    move-object/from16 v12, v29

    goto/16 :goto_20

    :cond_29
    :goto_17
    move-object/from16 v12, v29

    .line 268
    :try_start_17
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_e

    if-eqz v14, :cond_2a

    .line 269
    :try_start_18
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v8, v14}, Lcom/beizi/ad/model/c$g;->c(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6

    goto :goto_19

    :catch_6
    move-exception v0

    move-object v6, v0

    move-object/from16 v34, v5

    move-object/from16 v32, v9

    move-object/from16 v5, v18

    move-object/from16 v15, v19

    move-object/from16 v14, v23

    :goto_18
    move-object/from16 v9, v28

    goto/16 :goto_20

    :cond_2a
    :goto_19
    move-object/from16 v14, v23

    .line 270
    :try_start_19
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d

    if-eqz v15, :cond_2b

    .line 271
    :try_start_1a
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v15}, Lcom/beizi/ad/model/c$g;->d(I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7

    goto :goto_1a

    :catch_7
    move-exception v0

    move-object v6, v0

    move-object/from16 v34, v5

    move-object/from16 v32, v9

    move-object/from16 v5, v18

    move-object/from16 v15, v19

    goto :goto_18

    :cond_2b
    :goto_1a
    move-object/from16 v15, v19

    .line 272
    :try_start_1b
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    move-object/from16 v34, v5

    if-eqz v19, :cond_2c

    .line 273
    :try_start_1c
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/beizi/ad/model/c$g;->a(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8

    goto :goto_1b

    :catch_8
    move-exception v0

    move-object v6, v0

    move-object/from16 v32, v9

    move-object/from16 v5, v18

    goto :goto_18

    :cond_2c
    :goto_1b
    move-object/from16 v5, v18

    .line 274
    :try_start_1d
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_b

    move-object/from16 v32, v9

    if-eqz v18, :cond_2d

    .line 275
    :try_start_1e
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/beizi/ad/model/c$g;->b(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    goto :goto_1c

    :catch_9
    move-exception v0

    move-object v6, v0

    goto :goto_18

    :cond_2d
    :goto_1c
    move-object/from16 v9, v28

    .line 276
    :try_start_1f
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 277
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/beizi/ad/model/c$g;->c(Ljava/lang/String;)V

    .line 278
    :cond_2e
    invoke-virtual {v2, v8}, Lcom/beizi/ad/model/c$j;->a(Lcom/beizi/ad/model/c$g;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_a

    goto/16 :goto_21

    :catch_a
    move-exception v0

    goto/16 :goto_1f

    :catch_b
    move-exception v0

    move-object/from16 v32, v9

    goto :goto_1d

    :catch_c
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v32, v9

    move-object/from16 v5, v18

    goto :goto_1d

    :catch_d
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v32, v9

    move-object/from16 v5, v18

    move-object/from16 v15, v19

    goto :goto_1d

    :catch_e
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v32, v9

    move-object/from16 v5, v18

    move-object/from16 v15, v19

    move-object/from16 v14, v23

    :goto_1d
    move-object/from16 v9, v28

    goto :goto_1f

    :catch_f
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v32, v9

    move-object/from16 v5, v18

    move-object/from16 v15, v19

    move-object/from16 v14, v23

    move-object/from16 v9, v28

    move-object/from16 v12, v29

    goto :goto_1f

    :catch_10
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v32, v9

    goto :goto_1e

    :cond_2f
    move-object/from16 v34, v5

    move-object/from16 v5, v18

    move-object/from16 v15, v19

    move-object/from16 v14, v23

    move-object/from16 v9, v28

    move-object/from16 v12, v29

    move-object/from16 v10, v31

    goto :goto_21

    :catch_11
    move-exception v0

    move-object/from16 v34, v5

    :goto_1e
    move-object/from16 v5, v18

    move-object/from16 v15, v19

    move-object/from16 v14, v23

    move-object/from16 v9, v28

    move-object/from16 v12, v29

    move-object/from16 v10, v31

    :goto_1f
    move-object v6, v0

    .line 279
    :goto_20
    :try_start_20
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_1d

    .line 280
    :goto_21
    :try_start_21
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1c

    if-eqz v6, :cond_30

    .line 281
    :try_start_22
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 282
    invoke-static {v3}, Lcom/beizi/ad/model/c;->c(Lorg/json/JSONObject;)Lcom/beizi/ad/model/a/f;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 283
    invoke-virtual {v2, v3}, Lcom/beizi/ad/model/c$j;->a(Lcom/beizi/ad/model/a/f;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_12

    goto :goto_22

    :catch_12
    move-exception v0

    move-object v4, v0

    move-object/from16 v7, v16

    move-object/from16 v1, v17

    move-object/from16 v8, v25

    move-object/from16 v6, v26

    move-object/from16 v3, v27

    goto/16 :goto_28

    :cond_30
    :goto_22
    move-object/from16 v3, v27

    .line 284
    :try_start_23
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1b

    if-eqz v6, :cond_31

    .line 285
    :try_start_24
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/beizi/ad/model/c$j;->d(I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_13

    goto :goto_23

    :catch_13
    move-exception v0

    move-object v4, v0

    move-object/from16 v7, v16

    move-object/from16 v1, v17

    move-object/from16 v8, v25

    move-object/from16 v6, v26

    goto/16 :goto_28

    :cond_31
    :goto_23
    move-object/from16 v6, v26

    .line 286
    :try_start_25
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1a

    if-eqz v8, :cond_32

    .line 287
    :try_start_26
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/beizi/ad/model/c$j;->e(I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_14

    goto :goto_24

    :catch_14
    move-exception v0

    move-object v4, v0

    move-object/from16 v7, v16

    move-object/from16 v1, v17

    move-object/from16 v8, v25

    goto/16 :goto_28

    .line 288
    :cond_32
    :goto_24
    :try_start_27
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1a

    if-eqz v8, :cond_33

    .line 289
    :try_start_28
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 290
    invoke-static {v8}, Lcom/beizi/ad/model/c;->b(Lorg/json/JSONObject;)Lcom/beizi/ad/model/h;

    move-result-object v8

    if-eqz v8, :cond_33

    .line 291
    invoke-virtual {v2, v8}, Lcom/beizi/ad/model/c$j;->a(Lcom/beizi/ad/model/h;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_14

    .line 292
    :cond_33
    :try_start_29
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1a

    if-eqz v8, :cond_34

    .line 293
    :try_start_2a
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 294
    invoke-static {v8}, Lcom/beizi/ad/model/c;->d(Lorg/json/JSONObject;)Lcom/beizi/ad/model/l;

    move-result-object v8

    if-eqz v8, :cond_34

    .line 295
    invoke-virtual {v2, v8}, Lcom/beizi/ad/model/c$j;->a(Lcom/beizi/ad/model/l;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_14

    :cond_34
    move-object/from16 v8, v25

    .line 296
    :try_start_2b
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_19

    if-eqz v11, :cond_35

    .line 297
    :try_start_2c
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 298
    invoke-static {v11}, Lcom/beizi/ad/model/c;->d(Lorg/json/JSONObject;)Lcom/beizi/ad/model/l;

    move-result-object v11

    if-eqz v11, :cond_35

    .line 299
    invoke-virtual {v2, v11}, Lcom/beizi/ad/model/c$j;->b(Lcom/beizi/ad/model/l;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_15

    goto :goto_25

    :catch_15
    move-exception v0

    move-object v4, v0

    move-object/from16 v7, v16

    move-object/from16 v1, v17

    goto/16 :goto_28

    .line 300
    :cond_35
    :goto_25
    :try_start_2d
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_19

    if-eqz v11, :cond_36

    .line 301
    :try_start_2e
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 302
    invoke-static {v7}, Lcom/beizi/ad/model/c;->e(Lorg/json/JSONObject;)Lcom/beizi/ad/model/m;

    move-result-object v7

    if-eqz v7, :cond_36

    .line 303
    invoke-virtual {v2, v7}, Lcom/beizi/ad/model/c$j;->a(Lcom/beizi/ad/model/m;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_15

    .line 304
    :cond_36
    :try_start_2f
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_19

    if-eqz v7, :cond_37

    .line 305
    :try_start_30
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 306
    invoke-static {v1}, Lcom/beizi/ad/model/c;->f(Lorg/json/JSONObject;)Lcom/beizi/ad/model/j;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 307
    invoke-virtual {v2, v1}, Lcom/beizi/ad/model/c$j;->a(Lcom/beizi/ad/model/j;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_15

    :cond_37
    move-object/from16 v1, v17

    .line 308
    :try_start_31
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_18

    if-eqz v7, :cond_38

    .line 309
    :try_start_32
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 310
    invoke-static {v7}, Lcom/beizi/ad/model/c;->j(Lorg/json/JSONObject;)Lcom/beizi/ad/model/q;

    move-result-object v7

    if-eqz v7, :cond_38

    .line 311
    invoke-virtual {v2, v7}, Lcom/beizi/ad/model/c$j;->a(Lcom/beizi/ad/model/q;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_16

    goto :goto_26

    :catch_16
    move-exception v0

    move-object v4, v0

    move-object/from16 v7, v16

    goto :goto_28

    :cond_38
    :goto_26
    move-object/from16 v7, v16

    .line 312
    :try_start_33
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_39

    .line 313
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 314
    invoke-static {v4}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONObject;)Lcom/beizi/ad/model/d;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 315
    invoke-virtual {v2, v4}, Lcom/beizi/ad/model/c$j;->a(Lcom/beizi/ad/model/d;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_17

    goto :goto_29

    :catch_17
    move-exception v0

    goto :goto_27

    :catch_18
    move-exception v0

    move-object/from16 v7, v16

    goto :goto_27

    :catch_19
    move-exception v0

    move-object/from16 v7, v16

    move-object/from16 v1, v17

    goto :goto_27

    :catch_1a
    move-exception v0

    move-object/from16 v7, v16

    move-object/from16 v1, v17

    move-object/from16 v8, v25

    goto :goto_27

    :catch_1b
    move-exception v0

    move-object/from16 v7, v16

    move-object/from16 v1, v17

    move-object/from16 v8, v25

    move-object/from16 v6, v26

    goto :goto_27

    :catch_1c
    move-exception v0

    move-object/from16 v7, v16

    move-object/from16 v1, v17

    move-object/from16 v8, v25

    move-object/from16 v6, v26

    move-object/from16 v3, v27

    :goto_27
    move-object v4, v0

    .line 316
    :goto_28
    :try_start_34
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_39
    :goto_29
    move-object/from16 v4, v24

    .line 317
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_34} :catch_1d

    goto :goto_2a

    :cond_3a
    move-object/from16 v21, v2

    move-object/from16 v35, v4

    move-object v4, v5

    move-object v6, v11

    move-object/from16 v32, v12

    move-object/from16 v34, v14

    move/from16 v22, v15

    move-object/from16 v1, v17

    move-object/from16 v5, v18

    move-object/from16 v15, v19

    move-object v14, v8

    move-object v12, v9

    move-object v9, v3

    move-object v8, v7

    move-object v3, v13

    move-object/from16 v7, v16

    :goto_2a
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v17, v1

    move-object v13, v3

    move-object/from16 v18, v5

    move-object v11, v6

    move-object/from16 v16, v7

    move-object v7, v8

    move-object v3, v9

    move-object v9, v12

    move-object v8, v14

    move-object/from16 v19, v15

    move-object/from16 v1, v20

    move-object/from16 v12, v32

    move-object/from16 v14, v34

    move v15, v2

    move-object v5, v4

    move-object/from16 v2, v21

    move-object/from16 v4, v35

    goto/16 :goto_0

    :catch_1d
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v20

    goto :goto_2c

    :catch_1e
    move-exception v0

    move-object/from16 v20, v1

    goto :goto_2b

    :cond_3b
    move-object v4, v5

    .line 318
    :try_start_35
    invoke-virtual {v1, v4}, Lcom/beizi/ad/model/c$i;->a(Ljava/util/List;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_35} :catch_1f

    goto :goto_2d

    :catch_1f
    move-exception v0

    :goto_2b
    move-object v2, v0

    .line 319
    :goto_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lcom/beizi/ad/lance/a/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    :goto_2d
    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/model/c$i;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/ad/model/c$i;->a:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/beizi/ad/model/c$i;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/ad/model/c$i;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/ad/model/c$j;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/beizi/ad/model/c$i;->e:Ljava/util/List;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/ad/model/c$i;->a:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/ad/model/c$i;->c:Ljava/lang/String;

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/ad/model/c$i;->d:J

    return-wide v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/beizi/ad/model/c$j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/model/c$i;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
