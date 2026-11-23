.class public Lcom/byazt/kz/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fiq/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x90,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kz/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/el/SSWebView;",
            ">;"
        }
    .end annotation
.end field

.field public final n:I

.field public final tt:Lcom/byazt/ete/ic;

.field public final uj:I

.field public final ve:J


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/byazt/ete/ic;JII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/el/SSWebView;",
            ">;",
            "Lcom/byazt/ete/ic;",
            "JII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/kz/c$c;->c:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/kz/c$c;->tt:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/byazt/kz/c$c;->ve:J

    .line 9
    .line 10
    iput p5, p0, Lcom/byazt/kz/c$c;->uj:I

    .line 11
    .line 12
    iput p6, p0, Lcom/byazt/kz/c$c;->n:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(ZIILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p5, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "TransmitBusiness_onResponse s : "

    .line 4
    .line 5
    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v0, " code:"

    .line 12
    .line 13
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p3, " msg:"

    .line 20
    .line 21
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p3, "  body:"

    .line 28
    .line 29
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    const-string p5, "transmit_TTWifiObject"

    .line 40
    .line 41
    invoke-static {p5, p3}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    const-string p4, "\u53d6\u53f7\u6210\u529f"

    .line 47
    .line 48
    :cond_0
    :goto_0
    move-object v5, p4

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-eqz p3, :cond_0

    .line 55
    .line 56
    const-string p4, "\u53d6\u53f7\u5931\u8d25"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    iget-object p3, p0, Lcom/byazt/kz/c$c;->tt:Lcom/byazt/ete/ic;

    .line 60
    .line 61
    new-instance p4, Lcom/byazt/kz/c$ve;

    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    iget-wide v2, p0, Lcom/byazt/kz/c$c;->ve:J

    .line 68
    .line 69
    sub-long v1, v0, v2

    .line 70
    .line 71
    iget v6, p0, Lcom/byazt/kz/c$c;->uj:I

    .line 72
    .line 73
    iget v7, p0, Lcom/byazt/kz/c$c;->n:I

    .line 74
    .line 75
    move-object v0, p4

    .line 76
    move v3, p2

    .line 77
    move v4, p1

    .line 78
    invoke-direct/range {v0 .. v7}, Lcom/byazt/kz/c$ve;-><init>(JIZLjava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    const-string p1, "wifi_auth"

    .line 82
    .line 83
    const-string p5, "click_other"

    .line 84
    .line 85
    invoke-static {p3, p1, p5, p4}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    .line 86
    .line 87
    .line 88
    new-instance p1, Lorg/json/JSONObject;

    .line 89
    .line 90
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .line 92
    .line 93
    :try_start_0
    const-string p3, "data"

    .line 94
    .line 95
    if-nez p6, :cond_2

    .line 96
    .line 97
    const-string p6, ""

    .line 98
    .line 99
    :cond_2
    invoke-virtual {p1, p3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    const-string p3, "networkType"

    .line 103
    .line 104
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catch_0
    nop

    .line 109
    :goto_2
    iget-object p2, p0, Lcom/byazt/kz/c$c;->c:Ljava/lang/ref/WeakReference;

    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Lcom/byazt/el/SSWebView;

    .line 116
    .line 117
    if-eqz p2, :cond_3

    .line 118
    .line 119
    new-instance p3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string p4, "javascript:receiveNetworkSwitch("

    .line 122
    .line 123
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p1, ")"

    .line 130
    .line 131
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p2, p1}, Lcom/byazt/nr/yp;->c(Lcom/byazt/nl/uj;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    return-void
.end method
