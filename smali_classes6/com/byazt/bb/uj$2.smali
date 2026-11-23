.class public Lcom/byazt/bb/uj$2;
.super Lcom/byazt/wrq/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0x61
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bb/uj;->c(Ljava/util/Map;Lcom/byazt/aas/zb;)Lcom/byazt/wrq/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/aas/zb;

.field public final synthetic ve:Lcom/byazt/bb/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/bb/uj;ILcom/byazt/aas/zb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bb/uj$2;->ve:Lcom/byazt/bb/uj;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/bb/uj$2;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/bb/uj$2;->tt:Lcom/byazt/aas/zb;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/wrq/uj;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/byazt/bb/uj$2;->ve:Lcom/byazt/bb/uj;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/byazt/bb/c;->x:Z

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/bb/uj$2;->ve:Lcom/byazt/bb/uj;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/byazt/bb/c;->c:Lcom/byazt/eia/sp;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/eia/sp;->x_()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/bb/uj$2;->ve:Lcom/byazt/bb/uj;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/byazt/bb/uj;->c(Lcom/byazt/bb/uj;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/bb/uj$2;->ve:Lcom/byazt/bb/uj;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/bb/c;->tt()Lcom/byazt/ete/ic;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/byazt/bb/uj$2;->ve:Lcom/byazt/bb/uj;

    .line 32
    .line 33
    iget-object v2, v1, Lcom/byazt/bb/c;->ve:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/byazt/bb/c;->uj:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {v0, v2, v1, v3, v3}, Lcom/byazt/ppf/ve;->c(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/byazt/nd/n;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/byazt/bb/uj$2;->ve:Lcom/byazt/bb/uj;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/byazt/bb/c;->c:Lcom/byazt/eia/sp;

    .line 45
    .line 46
    instance-of v2, v1, Lcom/byazt/ete/ic;

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    new-instance v2, Lcom/byazt/szt/c;

    .line 51
    .line 52
    move-object v4, v1

    .line 53
    check-cast v4, Lcom/byazt/ete/ic;

    .line 54
    .line 55
    iget-object v5, v0, Lcom/byazt/bb/c;->ve:Landroid/content/Context;

    .line 56
    .line 57
    iget-object v6, v0, Lcom/byazt/bb/c;->uj:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v6}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    new-instance v8, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v10, 0x0

    .line 70
    move-object v3, v2

    .line 71
    invoke-direct/range {v3 .. v10}, Lcom/byazt/szt/c;-><init>(Lcom/byazt/eia/x;Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Lcom/byazt/szt/c;->c(Ljava/util/Map;)Z

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void

    .line 83
    :cond_2
    const/4 v0, 0x1

    .line 84
    iget v1, p0, Lcom/byazt/bb/uj$2;->c:I

    .line 85
    .line 86
    invoke-static {v0, v1}, Lcom/byazt/qt/ve;->tt(II)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/byazt/bb/uj$2;->tt:Lcom/byazt/aas/zb;

    .line 90
    .line 91
    const-string v1, "itemClickListener"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/byazt/bb/uj$2;->ve:Lcom/byazt/bb/uj;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/byazt/bb/c;->da:Ljava/util/function/Function;

    .line 99
    .line 100
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const/16 v2, 0x11

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-class v2, Ljava/lang/Void;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const/4 v2, 0x0

    .line 117
    iget-object v3, p0, Lcom/byazt/bb/uj$2;->tt:Lcom/byazt/aas/zb;

    .line 118
    .line 119
    invoke-virtual {v1, v2, v3}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v0, v1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    return-void
.end method
