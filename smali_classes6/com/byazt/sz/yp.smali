.class public Lcom/byazt/sz/yp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26a,
        0xd7
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public tt:Lorg/json/JSONObject;

.field public uj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Lorg/json/JSONObject;


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


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/sz/yp;->ve:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sz/yp;->c:Landroid/content/Context;

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/byazt/sz/yp;->uj:Ljava/util/Map;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/sz/yp;->tt:Lorg/json/JSONObject;

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sz/yp;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/sz/yp;->uj:Ljava/util/Map;

    return-object v0
.end method

.method public tt(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sz/yp;->ve:Lorg/json/JSONObject;

    return-void
.end method
