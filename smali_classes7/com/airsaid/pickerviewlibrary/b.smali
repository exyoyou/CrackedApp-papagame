.class public Lcom/airsaid/pickerviewlibrary/b;
.super Lcom/airsaid/pickerviewlibrary/c;
.source "SourceFile"


# instance fields
.field public A:Li/a;

.field private final v:Landroid/content/Context;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private z:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/airsaid/pickerviewlibrary/c;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/b;->w:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/b;->x:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/b;->y:Ljava/util/ArrayList;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/b;->v:Landroid/content/Context;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/b;->Q()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/b;->R()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/b;->P()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method static synthetic M(Lcom/airsaid/pickerviewlibrary/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/b;->x:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic N(Lcom/airsaid/pickerviewlibrary/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/b;->y:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic O(Lcom/airsaid/pickerviewlibrary/b;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airsaid/pickerviewlibrary/b;->w:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method private P()V
    .locals 4

    .line 1
    const-string v0, "\u9009\u62e9\u57ce\u5e02"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/c;->J(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/b;->w:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/b;->x:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/b;->y:Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/airsaid/pickerviewlibrary/c;->A(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, v0, v0}, Lcom/airsaid/pickerviewlibrary/c;->t(ZZZ)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v0, v0}, Lcom/airsaid/pickerviewlibrary/c;->E(III)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/airsaid/pickerviewlibrary/b$a;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/airsaid/pickerviewlibrary/b$a;-><init>(Lcom/airsaid/pickerviewlibrary/b;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/c;->y(Lcom/airsaid/pickerviewlibrary/c$a;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private Q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/b;->v:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    const-string v1, "city.json"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    new-array v1, v1, [B

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 20
    .line 21
    .line 22
    new-instance v2, Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "UTF-8"

    .line 25
    .line 26
    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lorg/json/JSONObject;

    .line 30
    .line 31
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/airsaid/pickerviewlibrary/b;->z:Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method private R()V
    .locals 13

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/b;->z:Lorg/json/JSONObject;

    .line 4
    .line 5
    const-string v2, "citylist"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    new-instance v6, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v7, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v8, "city"

    .line 38
    .line 39
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const/4 v8, 0x0

    .line 44
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    if-ge v8, v9, :cond_1

    .line 49
    .line 50
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    new-instance v10, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v11, "area"

    .line 67
    .line 68
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    const/4 v11, 0x0

    .line 73
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    if-ge v11, v12, :cond_0

    .line 78
    .line 79
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    add-int/lit8 v11, v11, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_0
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    add-int/lit8 v8, v8, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    iget-object v4, p0, Lcom/airsaid/pickerviewlibrary/b;->w:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    iget-object v4, p0, Lcom/airsaid/pickerviewlibrary/b;->x:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    iget-object v4, p0, Lcom/airsaid/pickerviewlibrary/b;->y:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    add-int/lit8 v3, v3, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :cond_2
    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/b;->z:Lorg/json/JSONObject;

    .line 119
    .line 120
    return-void
.end method


# virtual methods
.method public S(Li/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/b;->A:Li/a;

    .line 2
    .line 3
    return-void
.end method
