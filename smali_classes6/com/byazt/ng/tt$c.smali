.class public Lcom/byazt/ng/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf8,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ng/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public c:Lcom/byazt/ng/uj;

.field public tt:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/byazt/ng/uj;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/ng/tt$c;->c:Lcom/byazt/ng/uj;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/ng/tt$c;->tt:Lorg/json/JSONObject;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/ng/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ng/tt$c;->c:Lcom/byazt/ng/uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ng/tt$c;->c:Lcom/byazt/ng/uj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ng/tt$c;->tt:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/ng/c;->c(Lcom/byazt/ng/uj;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
