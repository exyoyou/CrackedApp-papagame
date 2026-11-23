.class public Lcom/aggmoread/sdk/z/a/g/c;
.super Lcom/aggmoread/sdk/z/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/g/c$a;
    }
.end annotation


# instance fields
.field private b:Lcom/aggmoread/sdk/z/a/h/c;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/z/a/g/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/e;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/z/a/g/c$a$b$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    new-instance v2, Lcom/aggmoread/sdk/z/a/g/c$a$b$a;

    invoke-direct {v2}, Lcom/aggmoread/sdk/z/a/g/c$a$b$a;-><init>()V

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/aggmoread/sdk/z/a/g/c$a$b$a;->a:I

    :cond_0
    const-string v4, "urls"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/g/c;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/aggmoread/sdk/z/a/g/c$a$b$a;->b:Ljava/util/List;

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/aggmoread/sdk/z/a/g/c;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/aggmoread/sdk/z/a/g/c;

    invoke-direct {v1}, Lcom/aggmoread/sdk/z/a/g/c;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "errorCode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/aggmoread/sdk/z/a/g/c;->b(I)V

    :cond_1
    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v3}, Lcom/aggmoread/sdk/z/a/g/c;->a(Ljava/lang/String;)V

    :cond_2
    const-string v3, "ads"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2f

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2f

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    new-instance v7, Lcom/aggmoread/sdk/z/a/g/c$a;

    invoke-direct {v7}, Lcom/aggmoread/sdk/z/a/g/c$a;-><init>()V

    const-string v8, "slotId"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(Ljava/lang/String;)V

    :cond_3
    const-string v8, "metaGroup"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2a

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2a

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_2a

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_29

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    new-instance v12, Lcom/aggmoread/sdk/z/a/g/c$a$b;

    invoke-direct {v12}, Lcom/aggmoread/sdk/z/a/g/c$a$b;-><init>()V

    new-instance v13, Lcom/aggmoread/sdk/z/a/g/a;

    invoke-direct {v13}, Lcom/aggmoread/sdk/z/a/g/a;-><init>()V

    const-string v14, "price"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->f(I)V

    :cond_4
    const-string v14, "descs"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-static {v14}, Lcom/aggmoread/sdk/z/a/g/c;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->g(Ljava/util/List;)V

    :cond_5
    const-string v14, "imageUrl"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-static {v14}, Lcom/aggmoread/sdk/z/a/g/c;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->i(Ljava/util/List;)V

    :cond_6
    const-string v14, "iconUrls"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-static {v14}, Lcom/aggmoread/sdk/z/a/g/c;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->h(Ljava/util/List;)V

    :cond_7
    const-string v14, "clickUrl"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->b(Ljava/lang/String;)V

    :cond_8
    const-string v14, "interactionType"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->e(I)V

    :cond_9
    const-string v14, "downType"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->d(I)V

    :cond_a
    const-string v14, "tanUrl"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/aggmoread/sdk/z/a/g/c$a$b;->u:Ljava/lang/String;

    :cond_b
    const-string v14, "packageName"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_c

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->f(Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    :cond_c
    const-string v14, "appSize"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_d

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v12, v15}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->b(I)V

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Lcom/aggmoread/sdk/z/a/g/a;->b:I

    :cond_d
    const-string v14, "apkVer"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_e

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/aggmoread/sdk/z/a/g/a;->c:Ljava/lang/String;

    :cond_e
    const-string v14, "verCode"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    const-string v14, "verCode"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_f

    const-string v14, "verCode"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Lcom/aggmoread/sdk/z/a/g/a;->d:I

    :cond_f
    const-string v14, "brandName"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    const-string v14, "brandName"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_10

    const-string v14, "brandName"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/aggmoread/sdk/z/a/g/a;->a:Ljava/lang/String;

    :cond_10
    const-string v14, "appName"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    const-string v14, "appName"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_11

    const-string v14, "appName"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/aggmoread/sdk/z/a/g/a;->a:Ljava/lang/String;

    :cond_11
    const-string v14, "appDeveloper"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    const-string v14, "appDeveloper"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_12

    const-string v14, "appDeveloper"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/aggmoread/sdk/z/a/g/a;->e:Ljava/lang/String;

    :cond_12
    const-string v14, "appPrivacyPolicy"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    const-string v14, "appPrivacyPolicy"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_13

    const-string v14, "appPrivacyPolicy"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/aggmoread/sdk/z/a/g/a;->h:Ljava/lang/String;

    :cond_13
    const-string v14, "appPermissionsUrl"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_14

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/aggmoread/sdk/z/a/g/a;->g:Ljava/lang/String;

    :cond_14
    const-string v15, "appPermission"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_17

    const-string v15, "appPermission"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_17

    const-string v15, "appPermission"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    if-eqz v15, :cond_17

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v3

    move-object/from16 v17, v8

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_16

    invoke-virtual {v15, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    move-object/from16 v18, v14

    new-instance v14, Lcom/aggmoread/sdk/z/a/g/a$a;

    invoke-direct {v14}, Lcom/aggmoread/sdk/z/a/g/a$a;-><init>()V

    move-object/from16 v19, v15

    const-string v15, "title"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/aggmoread/sdk/z/a/g/a$a;->a:Ljava/lang/String;

    const-string v15, "description"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v14, Lcom/aggmoread/sdk/z/a/g/a$a;->b:Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_15
    move-object/from16 v18, v14

    move-object/from16 v19, v15

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    goto :goto_2

    :cond_16
    iput-object v4, v13, Lcom/aggmoread/sdk/z/a/g/a;->f:Ljava/util/List;

    goto :goto_4

    :cond_17
    move-object/from16 v16, v3

    move-object/from16 v17, v8

    :goto_4
    invoke-virtual {v12, v13}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->a(Lcom/aggmoread/sdk/z/a/g/a;)V

    const-string v3, "downloadLink"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "downloadLink"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "downloadLink"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->d(Ljava/lang/String;)V

    :cond_18
    const-string v3, "winNoticeUrls"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "winNoticeUrls"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "winNoticeUrls"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/g/c;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->k(Ljava/util/List;)V

    :cond_19
    const-string v3, "winCNoticeUrls"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "winCNoticeUrls"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "winCNoticeUrls"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/g/c;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->j(Ljava/util/List;)V

    :cond_1a
    const-string v3, "arrDownloadTrackUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "arrDownloadTrackUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "arrDownloadTrackUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/g/c;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->b(Ljava/util/List;)V

    :cond_1b
    const-string v3, "arrDownloadedTrakUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "arrDownloadedTrakUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "arrDownloadedTrakUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/g/c;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->c(Ljava/util/List;)V

    :cond_1c
    const-string v3, "arrIntallTrackUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "arrIntallTrackUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "arrIntallTrackUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/g/c;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->d(Ljava/util/List;)V

    :cond_1d
    const-string v3, "arrIntalledTrackUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, "arrIntalledTrackUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v3, "arrIntalledTrackUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/g/c;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->e(Ljava/util/List;)V

    :cond_1e
    const-string v3, "arrSkipTrackUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "arrSkipTrackUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "arrSkipTrackUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/g/c;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->f(Ljava/util/List;)V

    :cond_1f
    const-string v3, "adTitle"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "adTitle"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "adTitle"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->a(Ljava/lang/String;)V

    :cond_20
    const-string v3, "deepLink"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "deepLink"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    const-string v3, "deepLink"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->c(Ljava/lang/String;)V

    const-string v3, "arrDeepLinkTrackUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "arrDeepLinkTrackUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    const-string v3, "arrDeepLinkTrackUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/g/c;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->a(Ljava/util/List;)V

    :cond_21
    const-string v3, "creativeType"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v3, "creativeType"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "creativeType"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->c(I)V

    :cond_22
    const-string v3, "videoUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string v3, "videoUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "videoUrl"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->g(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v12}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aggmoread/sdk/z/a/m/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v12, Lcom/aggmoread/sdk/z/a/g/c$a$b;->w:Landroid/graphics/Bitmap;

    :cond_23
    const-string v3, "videoDuration"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "videoDuration"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string v3, "videoDuration"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->g(I)V

    :cond_24
    const-string v3, "videoSize"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "videoSize"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "videoSize"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->a(J)V

    :cond_25
    const-string v3, "videoWidth"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "videoWidth"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string v3, "videoWidth"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->i(I)V

    :cond_26
    const-string v3, "videoHeight"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, "videoHeight"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "videoHeight"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->h(I)V

    :cond_27
    const-string v3, "end_card_html"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v3, "end_card_html"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string v3, "end_card_html"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/aggmoread/sdk/z/a/g/c$a$b;->e(Ljava/lang/String;)V

    :cond_28
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v16

    move-object/from16 v8, v17

    goto/16 :goto_1

    :cond_29
    move-object/from16 v16, v3

    invoke-virtual {v7, v9}, Lcom/aggmoread/sdk/z/a/g/c$a;->a(Ljava/util/List;)V

    goto :goto_5

    :cond_2a
    move-object/from16 v16, v3

    :goto_5
    const-string v3, "tracks"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_2d

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/aggmoread/sdk/z/a/g/c$a$c;

    invoke-direct {v9}, Lcom/aggmoread/sdk/z/a/g/c$a$c;-><init>()V

    const-string v10, "type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2b

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2b

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/aggmoread/sdk/z/a/g/c$a$c;->a(I)V

    :cond_2b
    const-string v10, "urls"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2c

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2c

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-static {v8}, Lcom/aggmoread/sdk/z/a/g/c;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/aggmoread/sdk/z/a/g/c$a$c;->a(Ljava/util/List;)V

    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_2d
    invoke-virtual {v7, v4}, Lcom/aggmoread/sdk/z/a/g/c$a;->b(Ljava/util/List;)V

    :cond_2e
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v16

    goto/16 :goto_0

    :cond_2f
    invoke-virtual {v1, v2}, Lcom/aggmoread/sdk/z/a/g/c;->a(Ljava/util/List;)V

    return-object v1
.end method

.method private static b(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/a/h/c;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/c;->b:Lcom/aggmoread/sdk/z/a/h/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/c;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/z/a/g/c$a;",
            ">;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/c;->e:Ljava/util/List;

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/aggmoread/sdk/z/a/g/c;->c:I

    return-void
.end method

.method public e()Lcom/aggmoread/sdk/z/a/h/c;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/c;->b:Lcom/aggmoread/sdk/z/a/h/c;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/c;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    iget v0, p0, Lcom/aggmoread/sdk/z/a/g/c;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
