.class public Lcom/byazt/kz/c$tt;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x90,
        0xaf
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kz/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "tt"
.end annotation


# instance fields
.field public final a:I

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/el/SSWebView;",
            ">;"
        }
    .end annotation
.end field

.field public final n:J

.field public final sp:I

.field public final tt:Landroid/content/Context;

.field public final uj:Ljava/lang/String;

.field public final ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/el/SSWebView;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;JII)V
    .locals 1

    .line 1
    const-string v0, "send_network_switch"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/byazt/kz/c$tt;->c:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-object p1, p0, Lcom/byazt/kz/c$tt;->tt:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/byazt/kz/c$tt;->ve:Lcom/byazt/ete/ic;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/byazt/kz/c$tt;->uj:Ljava/lang/String;

    .line 26
    .line 27
    iput-wide p5, p0, Lcom/byazt/kz/c$tt;->n:J

    .line 28
    .line 29
    iput p7, p0, Lcom/byazt/kz/c$tt;->a:I

    .line 30
    .line 31
    iput p8, p0, Lcom/byazt/kz/c$tt;->sp:I

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/kz/c$tt;->tt:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    const-string v1, "data"

    .line 11
    .line 12
    const-string v2, "\u53d6\u53f7\u5931\u8d25\uff0ccontext is null"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "networkType"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    nop

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/byazt/kz/c$tt;->c:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/byazt/el/SSWebView;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "javascript:receiveNetworkSwitch("

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ")"

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v1, v0}, Lcom/byazt/nr/yp;->c(Lcom/byazt/nl/uj;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v0, p0, Lcom/byazt/kz/c$tt;->ve:Lcom/byazt/ete/ic;

    .line 58
    .line 59
    new-instance v9, Lcom/byazt/kz/c$ve;

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    iget-wide v3, p0, Lcom/byazt/kz/c$tt;->n:J

    .line 66
    .line 67
    sub-long v2, v1, v3

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    const/4 v5, 0x0

    .line 71
    const-string v6, "context is null"

    .line 72
    .line 73
    iget v7, p0, Lcom/byazt/kz/c$tt;->a:I

    .line 74
    .line 75
    iget v8, p0, Lcom/byazt/kz/c$tt;->sp:I

    .line 76
    .line 77
    move-object v1, v9

    .line 78
    invoke-direct/range {v1 .. v8}, Lcom/byazt/kz/c$ve;-><init>(JIZLjava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    const-string v1, "wifi_auth"

    .line 82
    .line 83
    const-string v2, "click_other"

    .line 84
    .line 85
    invoke-static {v0, v1, v2, v9}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_1
    new-instance v1, Lcom/byazt/fiq/a;

    .line 90
    .line 91
    new-instance v2, Lcom/byazt/fiq/c;

    .line 92
    .line 93
    invoke-direct {v2}, Lcom/byazt/fiq/c;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-direct {v1, v0, v2}, Lcom/byazt/fiq/a;-><init>(Landroid/content/Context;Lcom/byazt/fiq/c;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/byazt/kz/c$tt;->uj:Ljava/lang/String;

    .line 100
    .line 101
    new-instance v9, Lcom/byazt/kz/c$c;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/byazt/kz/c$tt;->c:Ljava/lang/ref/WeakReference;

    .line 104
    .line 105
    iget-object v4, p0, Lcom/byazt/kz/c$tt;->ve:Lcom/byazt/ete/ic;

    .line 106
    .line 107
    iget-wide v5, p0, Lcom/byazt/kz/c$tt;->n:J

    .line 108
    .line 109
    iget v7, p0, Lcom/byazt/kz/c$tt;->a:I

    .line 110
    .line 111
    iget v8, p0, Lcom/byazt/kz/c$tt;->sp:I

    .line 112
    .line 113
    move-object v2, v9

    .line 114
    invoke-direct/range {v2 .. v8}, Lcom/byazt/kz/c$c;-><init>(Ljava/lang/ref/WeakReference;Lcom/byazt/ete/ic;JII)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0, v9}, Lcom/byazt/fiq/a;->c(Ljava/lang/String;Lcom/byazt/fiq/ve;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
