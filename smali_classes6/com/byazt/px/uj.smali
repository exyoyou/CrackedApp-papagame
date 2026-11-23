.class public Lcom/byazt/px/uj;
.super Lcom/byazt/fb/uj;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ly/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b2,
        0xf
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/yf/ve;

.field public c:Lcom/byazt/px/ve;

.field public n:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public sp:J

.field public tt:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/ly/ve;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Ljava/lang/String;

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/fb/uj;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/px/uj;->uj:Ljava/util/List;

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/byazt/px/uj;->sp:J

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/byazt/px/uj;->x:I

    .line 17
    .line 18
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/byazt/bp/c;->cu()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/byazt/px/ve;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/px/ve;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/byazt/px/uj;->c:Lcom/byazt/px/ve;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/px/ve;->c()Ljava/util/function/Function;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/byazt/px/uj;->tt:Ljava/util/function/Function;

    .line 37
    .line 38
    return-void
.end method

.method private c()I
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/bp/c;->tt()Lcom/byazt/xf/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/xf/ve;->md()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c(Lcom/byazt/pp/c;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/px/uj;->uj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ly/ve;

    .line 5
    invoke-interface {v1, p1}, Lcom/byazt/ly/ve;->c(Lcom/byazt/pp/c;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/byazt/px/uj;->uj:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p2, "gdt"

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static getAdaperManagerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    sparse-switch v0, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :sswitch_0
    const-string v0, "mintegral"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x6

    .line 23
    goto :goto_0

    .line 24
    :sswitch_1
    const-string v0, "unity"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x5

    .line 34
    goto :goto_0

    .line 35
    :sswitch_2
    const-string v0, "baidu"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v1, 0x4

    .line 45
    goto :goto_0

    .line 46
    :sswitch_3
    const-string v0, "gdt"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v1, 0x3

    .line 56
    goto :goto_0

    .line 57
    :sswitch_4
    const-string v0, "ks"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    const/4 v1, 0x2

    .line 67
    goto :goto_0

    .line 68
    :sswitch_5
    const-string v0, "xiaomi"

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-nez p0, :cond_5

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    const/4 v1, 0x1

    .line 78
    goto :goto_0

    .line 79
    :sswitch_6
    const-string v0, "sigmob"

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_6

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_6
    const/4 v1, 0x0

    .line 89
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    return-object p0

    .line 94
    :pswitch_0
    const-string p0, "a.b.c.d.e.f.mal.MalFunction"

    .line 95
    .line 96
    return-object p0

    .line 97
    :pswitch_1
    const-string p0, "a.b.c.d.e.f.uty.UtyFunction"

    .line 98
    .line 99
    return-object p0

    .line 100
    :pswitch_2
    const-string p0, "a.b.c.d.e.f.bdu.BduFunction"

    .line 101
    .line 102
    return-object p0

    .line 103
    :pswitch_3
    const-string p0, "a.b.c.d.e.f.gng.GngFunction"

    .line 104
    .line 105
    return-object p0

    .line 106
    :pswitch_4
    const-string p0, "a.b.c.d.e.f.kou.KouFunction"

    .line 107
    .line 108
    return-object p0

    .line 109
    :pswitch_5
    const-string p0, "a.b.c.d.e.f.xmi.XmiFunction"

    .line 110
    .line 111
    return-object p0

    .line 112
    :pswitch_6
    const-string p0, "a.b.c.d.e.f.sob.SobFunction"

    .line 113
    .line 114
    return-object p0

    .line 115
    :sswitch_data_0
    .sparse-switch
        -0x35ca9371 -> :sswitch_6
        -0x2d450b45 -> :sswitch_5
        0xd68 -> :sswitch_4
        0x18f37 -> :sswitch_3
        0x592ae1b -> :sswitch_2
        0x6a45775 -> :sswitch_1
        0x431e1919 -> :sswitch_0
    .end sparse-switch

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAdnAdapterVersion()Lorg/json/JSONObject;
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/rq/c;->n()Lcom/byazt/it/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "gm_adapter_version_list"

    .line 9
    .line 10
    invoke-interface {v0, v2, v1}, Lcom/byazt/it/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-object v2

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-object v1
.end method

.method public static getClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    sparse-switch v0, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :sswitch_0
    const-string v0, "mintegral"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x7

    .line 24
    goto :goto_0

    .line 25
    :sswitch_1
    const-string v0, "unity"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x6

    .line 35
    goto :goto_0

    .line 36
    :sswitch_2
    const-string v0, "baidu"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x5

    .line 46
    goto :goto_0

    .line 47
    :sswitch_3
    const-string v0, "gdt"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v1, 0x4

    .line 57
    goto :goto_0

    .line 58
    :sswitch_4
    const-string v0, "ks"

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_4

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const/4 v1, 0x3

    .line 68
    goto :goto_0

    .line 69
    :sswitch_5
    const-string v0, "xiaomi"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_5

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    const/4 v1, 0x2

    .line 79
    goto :goto_0

    .line 80
    :sswitch_6
    const-string v0, "sigmob"

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_6

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    const/4 v1, 0x1

    .line 90
    goto :goto_0

    .line 91
    :sswitch_7
    const-string v0, "klevin"

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-nez p0, :cond_7

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_7
    const/4 v1, 0x0

    .line 101
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 102
    .line 103
    .line 104
    const/4 p0, 0x0

    .line 105
    return-object p0

    .line 106
    :pswitch_0
    const-string p0, "com.bytedance.msdk.adapter.mintegral.MintegralAdapterConfiguration"

    .line 107
    .line 108
    return-object p0

    .line 109
    :pswitch_1
    const-string p0, "com.bytedance.msdk.adapter.unity.UnityAdapterConfiguration"

    .line 110
    .line 111
    return-object p0

    .line 112
    :pswitch_2
    const-string p0, "com.bytedance.msdk.adapter.baidu.BaiduAdapterConfiguration"

    .line 113
    .line 114
    return-object p0

    .line 115
    :pswitch_3
    const-string p0, "com.bytedance.msdk.adapter.gdt.GdtAdapterConfiguration"

    .line 116
    .line 117
    return-object p0

    .line 118
    :pswitch_4
    const-string p0, "com.bytedance.msdk.adapter.ks.KsAdapterConfiguration"

    .line 119
    .line 120
    return-object p0

    .line 121
    :pswitch_5
    const-string p0, "com.bytedance.msdk.adapter.xiaomi.XiaomiAdapterConfiguration"

    .line 122
    .line 123
    return-object p0

    .line 124
    :pswitch_6
    const-string p0, "com.bytedance.msdk.adapter.sigmob.SigmobAdapterConfiguration"

    .line 125
    .line 126
    return-object p0

    .line 127
    :pswitch_7
    const-string p0, "com.bytedance.msdk.adapter.klevin.KlevinAdapterConfiguration"

    .line 128
    .line 129
    return-object p0

    .line 130
    nop

    .line 131
    :sswitch_data_0
    .sparse-switch
        -0x4347d989 -> :sswitch_7
        -0x35ca9371 -> :sswitch_6
        -0x2d450b45 -> :sswitch_5
        0xd68 -> :sswitch_4
        0x18f37 -> :sswitch_3
        0x592ae1b -> :sswitch_2
        0x6a45775 -> :sswitch_1
        0x431e1919 -> :sswitch_0
    .end sparse-switch

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private n()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/px/uj$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/px/uj$1;-><init>(Lcom/byazt/px/uj;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/eu/n;->uj(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private tt()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/tjo/tt;->ve()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/byazt/px/uj;->getAdNetworkName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "\u7248\u672c\u53f7\uff1a"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/byazt/px/uj;->getNetworkSdkVersion()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, " , \u805a\u5408\u7248\u672c\u53f7\uff1a"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "TTMediationSDK_SDK_Init"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private uj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/px/uj;->uj:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/byazt/ly/ve;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/byazt/ly/ve;->c()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/px/uj;->uj:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private ve()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/byazt/tjo/tt;->ve()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/byazt/px/uj;->getAdapterVersion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "\u7248\u672c\u53f7\uff1a"

    .line 14
    .line 15
    const-string v3, "TTMediationSDK_SDK_Init"

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/byazt/px/uj;->getAdNetworkName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/byazt/px/uj;->getNetworkSdkVersion()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " , "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/byazt/px/uj;->getAdNetworkName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, "Adapter\u7248\u672c\u53f7\uff1a"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/byazt/px/uj;->getAdapterVersion()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, " , \u805a\u5408\u7248\u672c\u53f7\uff1a"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v3, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/byazt/px/uj;->getAdNetworkName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/byazt/px/uj;->getNetworkSdkVersion()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, " , ***"

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/byazt/px/uj;->getAdNetworkName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v2, "Adapter\u672a\u63a5\u5165\uff0c\u8bf7\u68c0\u67e5***, \u805a\u5408\u7248\u672c\u53f7\uff1a"

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v3, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method


# virtual methods
.method public applyFunction(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/PluginValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/16 p3, 0x1fba

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x1f55

    .line 5
    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p2, v1, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/byazt/px/uj;->n:Ljava/util/function/Function;

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/byazt/px/uj;->uj()V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    const/16 p3, 0x1fbb

    .line 28
    .line 29
    if-ne p1, p3, :cond_3

    .line 30
    .line 31
    const p1, -0x5f5e0eb

    .line 32
    .line 33
    .line 34
    const-class p3, Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/util/SparseArray;

    .line 41
    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    const p1, -0xf41de

    .line 45
    .line 46
    .line 47
    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroid/util/SparseArray;

    .line 52
    .line 53
    :cond_1
    if-nez p1, :cond_2

    .line 54
    .line 55
    const/16 p1, 0x1f56

    .line 56
    .line 57
    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/util/SparseArray;

    .line 62
    .line 63
    :cond_2
    if-eqz p1, :cond_6

    .line 64
    .line 65
    invoke-static {p1}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const p2, -0xf41dc

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    const p3, -0xf41dd

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, p3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->stringValue(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-instance p3, Lcom/byazt/pp/c;

    .line 88
    .line 89
    invoke-direct {p3, p2, p1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p3}, Lcom/byazt/px/uj;->c(Lcom/byazt/pp/c;)V

    .line 93
    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_3
    const/16 p3, 0x2014

    .line 97
    .line 98
    if-ne p1, p3, :cond_4

    .line 99
    .line 100
    iget-object p1, p0, Lcom/byazt/px/uj;->a:Lcom/byazt/yf/ve;

    .line 101
    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    const/16 p1, 0x1f9f

    .line 105
    .line 106
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iget-object p2, p0, Lcom/byazt/px/uj;->a:Lcom/byazt/yf/ve;

    .line 111
    .line 112
    invoke-interface {p2, p1}, Lcom/byazt/yf/ve;->c(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    const/16 p3, 0x204a

    .line 117
    .line 118
    if-ne p1, p3, :cond_5

    .line 119
    .line 120
    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-interface {p2, v1, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iput-object p1, p0, Lcom/byazt/px/uj;->n:Ljava/util/function/Function;

    .line 133
    .line 134
    invoke-direct {p0}, Lcom/byazt/px/uj;->n()V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_5
    const/16 p3, 0x204e

    .line 139
    .line 140
    if-ne p1, p3, :cond_6

    .line 141
    .line 142
    const/16 p1, 0x216d

    .line 143
    .line 144
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    iput p1, p0, Lcom/byazt/px/uj;->x:I

    .line 149
    .line 150
    const/16 p1, 0x216b

    .line 151
    .line 152
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->longValue(I)J

    .line 153
    .line 154
    .line 155
    move-result-wide v1

    .line 156
    const/16 p1, 0x216c

    .line 157
    .line 158
    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->longValue(I)J

    .line 159
    .line 160
    .line 161
    move-result-wide p1

    .line 162
    sub-long/2addr p1, v1

    .line 163
    iput-wide p1, p0, Lcom/byazt/px/uj;->sp:J

    .line 164
    .line 165
    :cond_6
    :goto_0
    return-object v0
.end method

.method public checkVersion()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/px/uj;->getAdNetworkName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/dc/n;->ve(Ljava/lang/String;)Ljava/util/function/Function;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/px/uj;->tt()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/byazt/px/uj;->ve()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public clearInitStatus()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/byazt/px/uj;->x:I

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/byazt/px/uj;->sp:J

    .line 7
    .line 8
    return-void
.end method

.method public getAdNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/px/uj;->n:Ljava/util/function/Function;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/16 v3, 0x1fa5

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-class v3, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v0, v2}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    instance-of v2, v0, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    return-object v1
.end method

.method public getBiddingToken(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/px/uj;->n:Ljava/util/function/Function;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/16 v2, 0x1fa6

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-class v2, Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/16 v2, 0x1f49

    .line 23
    .line 24
    invoke-virtual {v0, v2, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/16 v0, 0x1f46

    .line 29
    .line 30
    invoke-virtual {p1, v0, p2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/byazt/px/uj;->n:Ljava/util/function/Function;

    .line 39
    .line 40
    invoke-static {p2, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    instance-of p2, p1, Ljava/lang/String;

    .line 45
    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    check-cast p1, Ljava/lang/String;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_0
    return-object v1
.end method

.method public getBiddingTokenMap(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/px/uj;->n:Ljava/util/function/Function;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/16 v2, 0x1fa7

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-class v2, Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/16 v2, 0x1f49

    .line 23
    .line 24
    invoke-virtual {v0, v2, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/16 v0, 0x1f46

    .line 29
    .line 30
    invoke-virtual {p1, v0, p2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/byazt/px/uj;->n:Ljava/util/function/Function;

    .line 39
    .line 40
    invoke-static {p2, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    instance-of p2, p1, Ljava/util/Map;

    .line 45
    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    check-cast p1, Ljava/util/Map;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_0
    return-object v1
.end method

.method public getGroMoreSdkVersion()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/px/uj;->n:Ljava/util/function/Function;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/16 v3, 0x1fa9

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-class v3, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v0, v2}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    instance-of v2, v0, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    return-object v1
.end method

.method public getMsdkRequestOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkSdkPluginVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/byazt/px/uj;->n:Ljava/util/function/Function;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/16 v3, 0x1fa8

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-class v3, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    instance-of v2, v1, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_0
    return-object v0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object v0
.end method

.method public initAdn(Landroid/content/Context;Ljava/util/Map;Lcom/byazt/ly/ve;)V
    .locals 19
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/byazt/ly/ve;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/ly/ve;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "adn_init"

    .line 8
    .line 9
    iget-object v4, v1, Lcom/byazt/px/uj;->uj:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    iget-object v4, v1, Lcom/byazt/px/uj;->uj:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Lcom/byazt/px/n;->c(Lcom/byazt/yxi/uj;)V

    .line 27
    .line 28
    .line 29
    const-string v4, "app_id"

    .line 30
    .line 31
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-virtual {v2, v5, v4}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Lcom/byazt/omf/x;->lr()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/16 v5, 0x2166

    .line 52
    .line 53
    invoke-virtual {v2, v5, v4}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Lcom/byazt/bp/c;->my()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/16 v5, 0x8

    .line 65
    .line 66
    invoke-virtual {v2, v5, v4}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 67
    .line 68
    .line 69
    const-string v4, "app_key"

    .line 70
    .line 71
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const/16 v5, 0x1f45

    .line 76
    .line 77
    invoke-virtual {v2, v5, v4}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 78
    .line 79
    .line 80
    const-string v4, "adn_name"

    .line 81
    .line 82
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Ljava/lang/String;

    .line 87
    .line 88
    iput-object v5, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 89
    .line 90
    const/16 v6, 0x1f4a

    .line 91
    .line 92
    invoke-static {v5}, Lcom/byazt/px/uj;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v2, v6, v5}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 97
    .line 98
    .line 99
    iget-object v5, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v5}, Lcom/byazt/px/uj;->getAdaperManagerName(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    const/16 v6, 0x2170

    .line 106
    .line 107
    invoke-virtual {v2, v6, v5}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 108
    .line 109
    .line 110
    const/16 v5, 0x1f43

    .line 111
    .line 112
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v2, v5, v4}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 117
    .line 118
    .line 119
    const/16 v4, 0x20da

    .line 120
    .line 121
    const-string v5, "5.3.20.1.0"

    .line 122
    .line 123
    invoke-virtual {v2, v4, v5}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 124
    .line 125
    .line 126
    const/16 v4, 0x20db

    .line 127
    .line 128
    invoke-static {}, Lcom/byazt/yl/tt;->ve()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v2, v4, v5}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 133
    .line 134
    .line 135
    const/16 v4, 0x20dd

    .line 136
    .line 137
    const-string v5, "9.4503.0"

    .line 138
    .line 139
    invoke-virtual {v2, v4, v5}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 140
    .line 141
    .line 142
    const/16 v4, 0x20de

    .line 143
    .line 144
    const-string v5, "4.680.1550.0"

    .line 145
    .line 146
    invoke-virtual {v2, v4, v5}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 147
    .line 148
    .line 149
    const/16 v4, 0x20e1

    .line 150
    .line 151
    const-string v5, "4.25.14.0"

    .line 152
    .line 153
    invoke-virtual {v2, v4, v5}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 154
    .line 155
    .line 156
    const/16 v4, 0x216e

    .line 157
    .line 158
    const-string v5, "5.3.3.8"

    .line 159
    .line 160
    invoke-virtual {v2, v4, v5}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 161
    .line 162
    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/byazt/px/uj;->c()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    const/4 v5, 0x7

    .line 172
    invoke-virtual {v2, v5, v4}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 173
    .line 174
    .line 175
    const/16 v4, 0x20e9

    .line 176
    .line 177
    invoke-virtual {v2, v4, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 178
    .line 179
    .line 180
    const/16 v0, 0x206c

    .line 181
    .line 182
    invoke-virtual {v2, v0, v1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 183
    .line 184
    .line 185
    iget-object v0, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 186
    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v5, "initAdn name: "

    .line 190
    .line 191
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v5, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-direct {v1, v0, v4}, Lcom/byazt/px/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const/4 v4, 0x0

    .line 207
    :try_start_0
    iget-object v0, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 208
    .line 209
    invoke-static {v0}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    const/4 v5, 0x2

    .line 214
    const-wide/16 v6, -0x1

    .line 215
    .line 216
    if-eqz v0, :cond_1

    .line 217
    .line 218
    invoke-static {}, Lcom/byazt/xiv/n;->n()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-ne v0, v5, :cond_1

    .line 223
    .line 224
    iget-object v0, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v0}, Lcom/byazt/dc/n;->ve(Ljava/lang/String;)Ljava/util/function/Function;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-nez v0, :cond_1

    .line 231
    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 233
    .line 234
    .line 235
    move-result-wide v8

    .line 236
    iget-object v0, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 237
    .line 238
    invoke-static {v0}, Lcom/byazt/dc/n;->uj(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_1
    move-wide v8, v6

    .line 243
    :goto_0
    iget-object v0, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 244
    .line 245
    invoke-static {v0}, Lcom/byazt/dc/n;->ve(Ljava/lang/String;)Ljava/util/function/Function;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iget-object v10, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 250
    .line 251
    const-string v11, "initAdn: dexBridge: "

    .line 252
    .line 253
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v12

    .line 257
    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v11

    .line 261
    invoke-direct {v1, v10, v11}, Lcom/byazt/px/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v10, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 265
    .line 266
    invoke-static {v10}, Lcom/byazt/dc/n;->c(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 270
    const-string v11, "dex_status"

    .line 271
    .line 272
    if-eqz v10, :cond_3

    .line 273
    .line 274
    :try_start_1
    iget-object v10, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 275
    .line 276
    if-nez v0, :cond_2

    .line 277
    .line 278
    const/16 v12, 0x2710

    .line 279
    .line 280
    goto :goto_1

    .line 281
    :cond_2
    const/16 v12, 0x4e20

    .line 282
    .line 283
    :goto_1
    invoke-static {v10, v11, v12}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;Ljava/lang/String;I)V

    .line 284
    .line 285
    .line 286
    invoke-static {}, Lcom/byazt/xiv/n;->n()I

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    if-ne v10, v5, :cond_3

    .line 291
    .line 292
    cmp-long v5, v8, v6

    .line 293
    .line 294
    if-eqz v5, :cond_3

    .line 295
    .line 296
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 297
    .line 298
    .line 299
    move-result-object v12

    .line 300
    const-wide/16 v13, 0x0

    .line 301
    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 303
    .line 304
    .line 305
    move-result-wide v5

    .line 306
    sub-long v15, v5, v8

    .line 307
    .line 308
    const/16 v17, 0x1

    .line 309
    .line 310
    const/16 v18, 0x2

    .line 311
    .line 312
    invoke-virtual/range {v12 .. v18}, Lcom/byazt/ukr/yp;->c(JJII)V

    .line 313
    .line 314
    .line 315
    :cond_3
    const/4 v5, 0x1

    .line 316
    if-eqz v0, :cond_4

    .line 317
    .line 318
    iget-object v6, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 319
    .line 320
    const-string v7, "initAdn: \u8d70dexpl\u7684ADN\u521d\u59cb\u5316"

    .line 321
    .line 322
    invoke-direct {v1, v6, v7}, Lcom/byazt/px/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-object v6, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 326
    .line 327
    invoke-static {v6, v3}, Lcom/byazt/dc/n;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    const/16 v7, 0x2173

    .line 332
    .line 333
    invoke-virtual {v2, v7, v6}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 334
    .line 335
    .line 336
    :try_start_2
    iput-object v0, v1, Lcom/byazt/px/uj;->n:Ljava/util/function/Function;

    .line 337
    .line 338
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    const/16 v6, 0x2030

    .line 343
    .line 344
    invoke-virtual {v4, v6}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    const-class v6, Ljava/lang/Void;

    .line 349
    .line 350
    invoke-virtual {v4, v6}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    const/16 v6, 0x1f49

    .line 355
    .line 356
    move-object/from16 v7, p1

    .line 357
    .line 358
    invoke-virtual {v4, v6, v7}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-virtual {v2}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    const/16 v6, 0x20e8

    .line 367
    .line 368
    invoke-virtual {v4, v6, v2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-virtual {v2}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-static {v0, v2}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    iget-object v0, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 380
    .line 381
    const/16 v2, 0x7530

    .line 382
    .line 383
    invoke-static {v0, v11, v2}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    .line 385
    .line 386
    goto :goto_4

    .line 387
    :catchall_0
    move-exception v0

    .line 388
    const/4 v4, 0x1

    .line 389
    goto :goto_2

    .line 390
    :cond_4
    :try_start_3
    iget-object v0, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 391
    .line 392
    const-string v6, "initAdn: \u8d70Adapter aar\u7684ADN\u521d\u59cb\u5316"

    .line 393
    .line 394
    invoke-direct {v1, v0, v6}, Lcom/byazt/px/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const/16 v0, 0x1fa4

    .line 398
    .line 399
    invoke-virtual {v2, v0}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    const-class v6, Ljava/lang/Boolean;

    .line 404
    .line 405
    invoke-virtual {v0, v6}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 406
    .line 407
    .line 408
    iget-object v0, v1, Lcom/byazt/px/uj;->tt:Ljava/util/function/Function;

    .line 409
    .line 410
    invoke-virtual {v2}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-static {v0, v2}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    check-cast v0, Ljava/lang/Boolean;

    .line 419
    .line 420
    if-eqz v0, :cond_5

    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 423
    .line 424
    .line 425
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 426
    if-eqz v0, :cond_5

    .line 427
    .line 428
    const/4 v4, 0x1

    .line 429
    goto :goto_3

    .line 430
    :catchall_1
    move-exception v0

    .line 431
    :goto_2
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 432
    .line 433
    .line 434
    :cond_5
    :goto_3
    move v5, v4

    .line 435
    :goto_4
    iget-object v0, v1, Lcom/byazt/px/uj;->ve:Ljava/lang/String;

    .line 436
    .line 437
    invoke-static {v0, v3, v5}, Lcom/byazt/xiv/n;->c(Ljava/lang/String;Ljava/lang/String;I)V

    .line 438
    .line 439
    .line 440
    return-void
.end method

.method public initDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/px/uj;->sp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public initStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/px/uj;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public initializeNetwork(Landroid/content/Context;Ljava/util/Map;Lcom/byazt/ly/n;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/byazt/ly/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/ly/n;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public isNewInitFunction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setMsdkRequestOptions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setPrivacyConfig(Lcom/byazt/yf/yp;Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/yf/yp;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/px/uj;->n:Ljava/util/function/Function;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/16 v1, 0x1fbc

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-class v1, Ljava/lang/Void;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/16 v1, 0x2145

    .line 24
    .line 25
    invoke-virtual {p1, v1, p2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public setThemeStatus(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/px/uj;->n:Ljava/util/function/Function;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x2032

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-class v2, Ljava/lang/Void;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/16 v2, 0x1f46

    .line 22
    .line 23
    invoke-virtual {v1, v2, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public showOpenOrInstallAppDialog(Lcom/byazt/yf/ve;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/px/uj;->n:Ljava/util/function/Function;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/px/uj;->a:Lcom/byazt/yf/ve;

    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/16 v2, 0x1fbe

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-class v2, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    check-cast p1, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_0
    return v1
.end method
