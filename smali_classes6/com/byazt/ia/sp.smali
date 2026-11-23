.class public Lcom/byazt/ia/sp;
.super Lcom/byazt/ia/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x203,
        0x5b
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ia/tt;Lcom/byazt/ia/uj;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/uy/ve;->tt:Lcom/byazt/uy/ve;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/byazt/ia/ve;-><init>(Lcom/byazt/uy/ve;Landroid/content/Context;Lcom/byazt/ia/tt;Lcom/byazt/ia/uj;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/xz/c;)Lcom/byazt/xz/c;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/ia/ve;->c(Lcom/byazt/xz/c;)Lcom/byazt/xz/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "app_count"

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "magic_tag"

    .line 16
    .line 17
    const-string v1, "ss_app_log"

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/byazt/ia/ve;->ve(Lcom/byazt/xz/c;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/ia/ve;->tt:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/byazt/xz/tt;->c(Landroid/content/Context;)Lcom/byazt/xz/tt;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {}, Lcom/byazt/uy/x;->c()Lcom/byazt/rx/c;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/byazt/rx/c;->c()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/byazt/xz/tt;->c(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/byazt/uy/x;->ve()Lcom/byazt/rx/x;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/byazt/rx/x;->c()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/byazt/xz/tt;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/byazt/ia/ve;->ve:Lcom/byazt/uy/n;

    .line 54
    .line 55
    invoke-interface {v1}, Lcom/byazt/uy/n;->ve()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/byazt/xz/tt;->tt(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/byazt/xz/c;->c(Lcom/byazt/xz/tt;)Lcom/byazt/xz/c;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/byazt/ia/ve;->c:Lcom/byazt/uy/ve;

    .line 66
    .line 67
    invoke-static {p1, v0, v1}, Lcom/byazt/mg/sl;->c(Lcom/byazt/xz/c;Lcom/byazt/xz/tt;Lcom/byazt/uy/ve;)V

    .line 68
    .line 69
    .line 70
    return-object p1
.end method
