.class public Lcom/byazt/ia/c;
.super Lcom/byazt/ia/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x203,
        0x14
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ia/tt;Lcom/byazt/ia/uj;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/uy/ve;->uj:Lcom/byazt/uy/ve;

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
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/ia/ve;->c(Lcom/byazt/xz/c;)Lcom/byazt/xz/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/byazt/ia/ve;->tt:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/xz/tt;->c(Landroid/content/Context;)Lcom/byazt/xz/tt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/byazt/uy/x;->c()Lcom/byazt/rx/c;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/byazt/rx/c;->c()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/xz/tt;->c(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/byazt/uy/x;->ve()Lcom/byazt/rx/x;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/byazt/rx/x;->c()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/byazt/xz/tt;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/byazt/ia/ve;->ve:Lcom/byazt/uy/n;

    .line 34
    .line 35
    invoke-interface {v1}, Lcom/byazt/uy/n;->ve()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/byazt/xz/tt;->tt(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/byazt/xz/c;->c(Lcom/byazt/xz/tt;)Lcom/byazt/xz/c;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/byazt/ia/ve;->tt:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/byazt/mg/c;->uj(Landroid/content/Context;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "process_name"

    .line 52
    .line 53
    invoke-virtual {p1, v2, v1}, Lcom/byazt/xz/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/byazt/ia/ve;->c:Lcom/byazt/uy/ve;

    .line 57
    .line 58
    invoke-static {p1, v0, v1}, Lcom/byazt/mg/sl;->c(Lcom/byazt/xz/c;Lcom/byazt/xz/tt;Lcom/byazt/uy/ve;)V

    .line 59
    .line 60
    .line 61
    return-object p1
.end method
