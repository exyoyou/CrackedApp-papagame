.class public Lcom/byazt/om/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/om/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x22a,
        0xf
    }
.end annotation


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
.method public c(Lcom/byazt/om/c$c;)V
    .locals 11

    .line 1
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->nu()Lcom/byazt/iz/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/iz/c;->c(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->ve()I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->md()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v6, v0

    .line 38
    check-cast v6, Ljava/util/List;

    .line 39
    .line 40
    new-instance v0, Lorg/json/JSONObject;

    .line 41
    .line 42
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/byazt/ug/c;->c()Lcom/byazt/ug/c;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->gr()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->yv()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    xor-int/lit8 v9, v1, 0x1

    .line 70
    .line 71
    move-object v10, v0

    .line 72
    invoke-virtual/range {v2 .. v10}, Lcom/byazt/ug/c;->c(Ljava/util/Map;Landroid/content/Context;Lcom/byazt/ll/tt;Ljava/util/List;Lcom/byazt/nbs/tt;IZLorg/json/JSONObject;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2, v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Lorg/json/JSONObject;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v1}, Lcom/byazt/iz/tt;->c(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public tt(Lcom/byazt/om/c$c;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lcom/byazt/om/c$c;->c(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
