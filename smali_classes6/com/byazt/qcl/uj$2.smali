.class public final Lcom/byazt/qcl/uj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x242,
        0x61
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qcl/uj;->c(Ljava/util/List;Lcom/byazt/ip/c;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Lcom/byazt/ip/c;

.field public final synthetic ve:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/byazt/ip/c;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qcl/uj$2;->c:Lorg/json/JSONObject;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/qcl/uj$2;->tt:Lcom/byazt/ip/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/qcl/uj$2;->ve:Ljava/util/List;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->wn()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/byazt/qcl/uj$2;->c:Lorg/json/JSONObject;

    .line 10
    .line 11
    const-string v2, "bidding_type"

    .line 12
    .line 13
    iget-object v3, p0, Lcom/byazt/qcl/uj$2;->tt:Lcom/byazt/ip/c;

    .line 14
    .line 15
    invoke-static {v3}, Lcom/byazt/qcl/uj;->c(Lcom/byazt/ip/c;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/qcl/uj$2;->c:Lorg/json/JSONObject;

    .line 27
    .line 28
    const-string v2, "node_line_version"

    .line 29
    .line 30
    const-string v3, "1.0.0"

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/byazt/qcl/uj$2;->c:Lorg/json/JSONObject;

    .line 36
    .line 37
    const-string v2, "unexpected_type"

    .line 38
    .line 39
    iget-object v3, p0, Lcom/byazt/qcl/uj$2;->tt:Lcom/byazt/ip/c;

    .line 40
    .line 41
    iget v3, v3, Lcom/byazt/ip/c;->da:I

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/byazt/qcl/uj$2;->c:Lorg/json/JSONObject;

    .line 51
    .line 52
    const-string v2, "node_line"

    .line 53
    .line 54
    iget-object v3, p0, Lcom/byazt/qcl/uj$2;->ve:Ljava/util/List;

    .line 55
    .line 56
    invoke-static {v3}, Lcom/byazt/qcl/uj;->c(Ljava/util/List;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    iget-object v0, p0, Lcom/byazt/qcl/uj$2;->c:Lorg/json/JSONObject;

    .line 66
    .line 67
    const-string v1, "node_line_detail"

    .line 68
    .line 69
    iget-object v2, p0, Lcom/byazt/qcl/uj$2;->ve:Ljava/util/List;

    .line 70
    .line 71
    invoke-static {v2}, Lcom/byazt/qcl/uj;->tt(Ljava/util/List;)Lorg/json/JSONArray;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    nop

    .line 80
    :cond_0
    :goto_0
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/byazt/qcl/uj$2;->tt:Lcom/byazt/ip/c;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 87
    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->uj(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/byazt/qcl/uj$2;->tt:Lcom/byazt/ip/c;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->a(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/byazt/qcl/uj$2;->tt:Lcom/byazt/ip/c;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->x(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/byazt/qcl/uj$2;->tt:Lcom/byazt/ip/c;

    .line 123
    .line 124
    iget-object v1, v1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->mk()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->i(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/byazt/qcl/uj$2;->tt:Lcom/byazt/ip/c;

    .line 135
    .line 136
    iget v1, v1, Lcom/byazt/ip/c;->sp:I

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(I)Lcom/byazt/qal/tt;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/byazt/qcl/uj$2;->tt:Lcom/byazt/ip/c;

    .line 143
    .line 144
    iget-object v1, v1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->ve(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/byazt/qcl/uj$2;->c:Lorg/json/JSONObject;

    .line 151
    .line 152
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->tt(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    return-object v0
.end method
