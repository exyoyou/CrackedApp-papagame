.class public Lcom/beizi/ad/model/g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/ad/model/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/ad/model/g$c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/beizi/ad/model/i$d;

.field private b:Lcom/beizi/ad/model/i$c;

.field private c:Lcom/beizi/ad/model/g$b;

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/beizi/ad/model/g$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/model/g$c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/model/g$c;Lcom/beizi/ad/model/g$b;)Lcom/beizi/ad/model/g$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/model/g$c;->c:Lcom/beizi/ad/model/g$b;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/ad/model/g$c;Lcom/beizi/ad/model/i$c;)Lcom/beizi/ad/model/i$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/ad/model/g$c;->b:Lcom/beizi/ad/model/i$c;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/ad/model/g$c;Lcom/beizi/ad/model/i$d;)Lcom/beizi/ad/model/i$d;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/ad/model/g$c;->a:Lcom/beizi/ad/model/i$d;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/ad/model/g$c;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/beizi/ad/model/g$c;->d:Z

    return p1
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/beizi/ad/model/g$c;->d:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "isp"

    const-string v3, "net"

    if-eqz v1, :cond_0

    .line 7
    :try_start_1
    iget-object v1, p0, Lcom/beizi/ad/model/g$c;->a:Lcom/beizi/ad/model/i$d;

    invoke-virtual {v1}, Lcom/beizi/ad/model/i$d;->a()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    iget-object v1, p0, Lcom/beizi/ad/model/g$c;->b:Lcom/beizi/ad/model/i$c;

    invoke-virtual {v1}, Lcom/beizi/ad/model/i$c;->a()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/beizi/ad/model/g$c;->a:Lcom/beizi/ad/model/i$d;

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object v1, p0, Lcom/beizi/ad/model/g$c;->b:Lcom/beizi/ad/model/i$c;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/beizi/ad/model/g$c;->c:Lcom/beizi/ad/model/g$b;

    if-eqz v1, :cond_1

    const-string v2, "geo"

    .line 12
    invoke-virtual {v1}, Lcom/beizi/ad/model/g$b;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
