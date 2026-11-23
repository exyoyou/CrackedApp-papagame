.class public Lcom/byazt/cj/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x37,
        0x38
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cj/m;->c(Ljava/util/Map;Ljava/util/Map;Lcom/byazt/cq/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lorg/json/JSONObject;

.field public final synthetic ve:Lcom/byazt/cj/m;


# direct methods
.method public constructor <init>(Lcom/byazt/cj/m;ILorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cj/m$1;->ve:Lcom/byazt/cj/m;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/cj/m$1;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/cj/m$1;->tt:Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/cj/m$1;->ve:Lcom/byazt/cj/m;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/byazt/cj/m;->tt(Lcom/byazt/cj/m;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/cj/m$1;->ve:Lcom/byazt/cj/m;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/byazt/cj/m;->c(Lcom/byazt/cj/m;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->x(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v1, p0, Lcom/byazt/cj/m$1;->c:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(I)Lcom/byazt/qal/tt;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/byazt/cj/m$1;->tt:Lorg/json/JSONObject;

    .line 32
    .line 33
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->tt(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method
