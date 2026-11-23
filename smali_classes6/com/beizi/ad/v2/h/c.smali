.class public Lcom/beizi/ad/v2/h/c;
.super Lcom/beizi/ad/v2/a/b;
.source "SourceFile"


# instance fields
.field private H:Lcom/beizi/ad/v2/h/b;

.field private I:Lcom/beizi/ad/lance/a/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/ad/internal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/beizi/ad/v2/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/ad/internal/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/h/c;Lcom/beizi/ad/lance/a/f;)Lcom/beizi/ad/lance/a/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/h/c;->I:Lcom/beizi/ad/lance/a/f;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/ad/v2/h/c;)Lcom/beizi/ad/v2/h/b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/beizi/ad/v2/h/c;->H:Lcom/beizi/ad/v2/h/b;

    return-object p0
.end method

.method static synthetic a(Lcom/beizi/ad/v2/h/c;Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/beizi/ad/v2/h/c;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/h/c;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/beizi/ad/v2/a/b;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/beizi/ad/v2/h/c;)Lcom/beizi/ad/internal/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/beizi/ad/v2/h/c$2;

    invoke-direct {v0, p0, p1}, Lcom/beizi/ad/v2/h/c$2;-><init>(Lcom/beizi/ad/v2/h/c;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/beizi/ad/v2/h/c;)Lcom/beizi/ad/internal/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/beizi/ad/v2/h/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/beizi/ad/v2/h/c;)Lcom/beizi/ad/internal/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/beizi/ad/v2/h/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/a/b;->t:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lcom/beizi/ad/v2/h/c;)Lcom/beizi/ad/internal/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/a/b;->r:Lcom/beizi/ad/internal/a/b;

    return-object p0
.end method

.method private g(Ljava/lang/String;)Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "resolution"

    const-string v2, "duration"

    const-string v3, "coverUrl"

    const-string v4, "coverWidth"

    const-string v5, "icon"

    const-string v6, "video"

    const-string v7, "imageList"

    const-string v8, "image"

    const-string v9, "actionText"

    const-string v10, "desc"

    const-string v11, "title"

    const-string v12, "adBrand"

    const-string v13, "creativeId"

    const-string v14, "coverHeight"

    .line 2
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1e

    const-string v15, "{"

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;

    invoke-direct {v0}, Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;-><init>()V

    .line 5
    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 6
    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;->setCreativeId(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 8
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;->setAdBrand(Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 10
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;->setTitle(Ljava/lang/String;)V

    .line 11
    :cond_3
    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 12
    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;->setDesc(Ljava/lang/String;)V

    .line 13
    :cond_4
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 14
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;->setActionText(Ljava/lang/String;)V

    .line 15
    :cond_5
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "height"

    const-string v11, "width"

    const-string v12, "url"

    if-eqz v9, :cond_9

    .line 16
    :try_start_1
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 17
    new-instance v9, Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;

    invoke-direct {v9}, Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;-><init>()V

    .line 18
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 19
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;->setWidth(I)V

    .line 20
    :cond_6
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 21
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;->setHeight(I)V

    .line 22
    :cond_7
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 23
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;->setUrl(Ljava/lang/String;)V

    .line 24
    :cond_8
    invoke-virtual {v0, v9}, Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;->setImage(Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;)V

    .line 25
    :cond_9
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 26
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 27
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_e

    .line 28
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 29
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v9, v13, :cond_d

    .line 30
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    move-object/from16 p1, v7

    .line 31
    new-instance v7, Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;

    invoke-direct {v7}, Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;-><init>()V

    .line 32
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v17, v5

    .line 33
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;->setWidth(I)V

    goto :goto_1

    :cond_a
    move-object/from16 v17, v5

    .line 34
    :goto_1
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 35
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;->setHeight(I)V

    .line 36
    :cond_b
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 37
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;->setUrl(Ljava/lang/String;)V

    .line 38
    :cond_c
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, p1

    move-object/from16 v5, v17

    goto :goto_0

    :cond_d
    move-object/from16 v17, v5

    .line 39
    invoke-virtual {v0, v8}, Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;->setImageList(Ljava/util/List;)V

    goto :goto_2

    :cond_e
    move-object/from16 v17, v5

    .line 40
    :goto_2
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 41
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 42
    new-instance v6, Lcom/beizi/fusion/unified/BZUnifiedAdVideoInfo;

    invoke-direct {v6}, Lcom/beizi/fusion/unified/BZUnifiedAdVideoInfo;-><init>()V

    .line 43
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 44
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/beizi/fusion/unified/BZUnifiedAdVideoInfo;->setCoverWidth(I)V

    .line 45
    :cond_f
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 46
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/beizi/fusion/unified/BZUnifiedAdVideoInfo;->setCoverHeight(I)V

    .line 47
    :cond_10
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 48
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/beizi/fusion/unified/BZUnifiedAdVideoInfo;->setCoverUrl(Ljava/lang/String;)V

    .line 49
    :cond_11
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 50
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/beizi/fusion/unified/BZUnifiedAdVideoInfo;->setCoverHeight(I)V

    .line 51
    :cond_12
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 52
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/beizi/fusion/unified/BZUnifiedAdVideoInfo;->setUrl(Ljava/lang/String;)V

    .line 53
    :cond_13
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 54
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/beizi/fusion/unified/BZUnifiedAdVideoInfo;->setDuration(I)V

    .line 55
    :cond_14
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 56
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/beizi/fusion/unified/BZUnifiedAdVideoInfo;->setResolution(Ljava/lang/String;)V

    .line 57
    :cond_15
    invoke-virtual {v0, v6}, Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;->setVideo(Lcom/beizi/fusion/unified/BZUnifiedAdVideoInfo;)V

    :cond_16
    move-object/from16 v1, v17

    .line 58
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 59
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 60
    new-instance v2, Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;

    invoke-direct {v2}, Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;-><init>()V

    .line 61
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 62
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;->setWidth(I)V

    .line 63
    :cond_17
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 64
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;->setHeight(I)V

    .line 65
    :cond_18
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 66
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;->setUrl(Ljava/lang/String;)V

    .line 67
    :cond_19
    invoke-virtual {v0, v2}, Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;->setIcon(Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;)V

    .line 68
    :cond_1a
    invoke-virtual {v0}, Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;->getImageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1b

    return-object v0

    .line 69
    :cond_1b
    invoke-virtual {v0}, Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;->getImage()Lcom/beizi/fusion/unified/BZUnifiedAdImageInfo;

    move-result-object v1

    if-eqz v1, :cond_1c

    return-object v0

    .line 70
    :cond_1c
    invoke-virtual {v0}, Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;->getVideo()Lcom/beizi/fusion/unified/BZUnifiedAdVideoInfo;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1d

    return-object v0

    :cond_1d
    const/4 v1, 0x0

    return-object v1

    :cond_1e
    :goto_3
    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method static synthetic h(Lcom/beizi/ad/v2/h/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/a/b;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lcom/beizi/ad/v2/h/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/a/b;->d:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/beizi/ad/v2/h/c$1;

    invoke-direct {v1, p0, p1}, Lcom/beizi/ad/v2/h/c$1;-><init>(Lcom/beizi/ad/v2/h/c;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 37
    iget-object p2, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/beizi/ad/internal/d/a;->b(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x19

    if-ne p2, v0, :cond_1

    .line 38
    iget-object p2, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/beizi/ad/internal/d/a;->c(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x32

    if-ne p2, v0, :cond_2

    .line 39
    iget-object p2, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/beizi/ad/internal/d/a;->d(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x4b

    if-ne p2, v0, :cond_3

    .line 40
    iget-object p2, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/beizi/ad/internal/d/a;->e(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x64

    if-ne p2, v0, :cond_4

    .line 41
    iget-object p2, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/beizi/ad/internal/d/a;->f(Landroid/view/View;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Lcom/beizi/ad/model/k;)V
    .locals 12

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/h/c;->H:Lcom/beizi/ad/v2/h/b;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->a()I

    move-result v8

    .line 10
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    if-nez v0, :cond_1

    return-void

    .line 11
    :cond_1
    iget-boolean v1, p0, Lcom/beizi/ad/v2/a/b;->G:Z

    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/d/a;->e(Z)V

    .line 12
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/beizi/ad/internal/d/a;->a(Z)V

    .line 13
    new-instance v3, Lcom/beizi/ad/model/f;

    invoke-direct {v3}, Lcom/beizi/ad/model/f;-><init>()V

    .line 14
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beizi/ad/model/f;->a(Ljava/lang/String;)V

    .line 16
    :cond_2
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beizi/ad/model/f;->b(Ljava/lang/String;)V

    .line 18
    :cond_3
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beizi/ad/model/f;->c(Ljava/lang/String;)V

    .line 20
    :cond_4
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beizi/ad/model/f;->d(Ljava/lang/String;)V

    .line 22
    :cond_5
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 23
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beizi/ad/model/f;->e(Ljava/lang/String;)V

    .line 24
    :cond_6
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 25
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beizi/ad/model/f;->f(Ljava/lang/String;)V

    .line 26
    :cond_7
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 27
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beizi/ad/model/f;->g(Ljava/lang/String;)V

    .line 28
    :cond_8
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 29
    invoke-virtual {p2}, Lcom/beizi/ad/model/k;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/beizi/ad/model/f;->h(Ljava/lang/String;)V

    .line 30
    :cond_9
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b;->c:Lcom/beizi/ad/internal/d/a;

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v10, 0xa

    add-long/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/beizi/ad/v2/a/b;->i:Z

    iget-object v7, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    move-object v2, p1

    .line 33
    invoke-virtual/range {v1 .. v8}, Lcom/beizi/ad/internal/d/a;->a(Landroid/view/View;Lcom/beizi/ad/model/f;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 34
    iput-boolean v9, p0, Lcom/beizi/ad/v2/a/b;->i:Z

    .line 35
    iget-object p1, p0, Lcom/beizi/ad/v2/h/c;->H:Lcom/beizi/ad/v2/h/b;

    invoke-interface {p1}, Lcom/beizi/ad/v2/h/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_a
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public a(Lcom/beizi/ad/internal/d/a;)V
    .locals 8

    .line 42
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/ad/v2/a/b;->b(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/ad/v2/a/b;->c(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->B()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/beizi/ad/v2/a/b;->a(Z)V

    .line 45
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->O()Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->P()Ljava/lang/String;

    move-result-object v7

    .line 47
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->n()Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->N()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beizi/ad/v2/h/c;->g(Ljava/lang/String;)Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 p1, 0x3

    .line 49
    invoke-virtual {p0, p1}, Lcom/beizi/ad/v2/h/c;->b(I)V

    return-void

    .line 50
    :cond_0
    new-instance v0, Lcom/beizi/ad/v2/h/c$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/beizi/ad/v2/h/c$4;-><init>(Lcom/beizi/ad/v2/h/c;Lcom/beizi/ad/internal/d/a;Lcom/beizi/fusion/unified/BZUnifiedAdTemplateBeanModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 52
    new-instance v1, Lcom/beizi/ad/v2/h/c$5;

    invoke-direct {v1, p0, v0}, Lcom/beizi/ad/v2/h/c$5;-><init>(Lcom/beizi/ad/v2/h/c;Lcom/beizi/fusion/unified/BZUnifiedAdResponse;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public a(Lcom/beizi/ad/v2/h/b;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/beizi/ad/v2/h/c;->H:Lcom/beizi/ad/v2/h/b;

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/beizi/ad/v2/h/c;->H:Lcom/beizi/ad/v2/h/b;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->j:Z

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 6
    new-instance v1, Lcom/beizi/ad/v2/h/c$3;

    invoke-direct {v1, p0, p1}, Lcom/beizi/ad/v2/h/c$3;-><init>(Lcom/beizi/ad/v2/h/c;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/beizi/ad/v2/a/b;->q()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beizi/ad/v2/h/c;->I:Lcom/beizi/ad/lance/a/f;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/beizi/ad/lance/a/f;->a()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/beizi/ad/v2/h/c;->I:Lcom/beizi/ad/lance/a/f;

    .line 13
    .line 14
    return-void
.end method
