.class public Lcom/byazt/omf/gr$24;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x98f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/gr;->c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;Lcom/byazt/ete/tt;Lcom/byazt/omf/gu$tt;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/omf/gr;

.field public final synthetic ve:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/gr;Ljava/lang/String;ZLjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/gr$24;->uj:Lcom/byazt/omf/gr;

    .line 2
    .line 3
    iput-boolean p3, p0, Lcom/byazt/omf/gr$24;->c:Z

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/omf/gr$24;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/omf/gr$24;->ve:Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "NetApiImpl"

    .line 2
    .line 3
    :try_start_0
    const-string v1, ""

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/byazt/omf/gr$24;->c:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/omf/gr$24;->tt:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/byazt/omf/gr$24;->ve:Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {}, Lcom/byazt/by/a;->c()Lcom/byazt/by/a;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v3, v2, v4}, Lcom/byazt/by/a;->c(Ljava/lang/String;Z)Landroid/util/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    check-cast v2, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    :goto_0
    sget-object v2, Lcom/byazt/zlb/tt;->c:Lcom/byazt/zlb/tt;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    sget-object v2, Lcom/byazt/zlb/tt;->c:Lcom/byazt/zlb/tt;

    .line 50
    .line 51
    const-string v3, "response:"

    .line 52
    .line 53
    invoke-virtual {v2, v0, v3}, Lcom/byazt/zlb/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-object v2, Lcom/byazt/zlb/tt;->c:Lcom/byazt/zlb/tt;

    .line 57
    .line 58
    invoke-virtual {v2, v0, v1}, Lcom/byazt/zlb/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
