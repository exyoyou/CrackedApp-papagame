.class public final Lcom/byazt/by/c$2;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x227,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/by/c;->tt(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/byazt/by/c$2;->c:Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/by/c$2;->c:Lorg/json/JSONArray;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/by/uj;->c(Lorg/json/JSONArray;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
