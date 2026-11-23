.class public abstract Lcom/byazt/hp/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3fb,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/hp/c$c;
    }
.end annotation


# instance fields
.field public c:Lorg/json/JSONObject;

.field public tt:Lcom/byazt/xj/ve;

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/xj/ve;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/hp/c;->c:Lorg/json/JSONObject;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/hp/c;->tt:Lcom/byazt/xj/ve;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/byazt/hp/c;->c()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/hp/c;->c:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/hp/c;->ve:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/byazt/hp/c;->tt()V

    return-void
.end method

.method public abstract c(II)V
.end method

.method public abstract c(Landroid/graphics/Canvas;)V
.end method

.method public abstract tt()V
.end method

.method public abstract tt(Landroid/graphics/Canvas;)V
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hp/c;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract ve()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end method
