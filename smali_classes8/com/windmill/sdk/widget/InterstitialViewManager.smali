.class public Lcom/windmill/sdk/widget/InterstitialViewManager;
.super Lcom/windmill/sdk/widget/a;
.source "SourceFile"


# static fields
.field private static d:Lcom/windmill/sdk/widget/a;

.field private static e:Lcom/windmill/sdk/widget/a;


# instance fields
.field private a:Z

.field private b:Landroid/content/Intent;

.field private c:Landroid/content/Context;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "nativeAdData",
            "serverExtra",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/windmill/sdk/widget/ViewInteractionListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/windmill/sdk/widget/a;-><init>(Lcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->a:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/a;->getNativeTemplateId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->c:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "---TemplateId: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    sput-object p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->d:Lcom/windmill/sdk/widget/a;

    .line 27
    .line 28
    sput-object p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->e:Lcom/windmill/sdk/widget/a;

    .line 29
    .line 30
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v1, -0x1

    .line 44
    sparse-switch v0, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    :goto_0
    const/4 p2, -0x1

    .line 48
    goto :goto_1

    .line 49
    :sswitch_0
    const-string p2, "4102001"

    .line 50
    .line 51
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 p2, 0x3

    .line 59
    goto :goto_1

    .line 60
    :sswitch_1
    const-string p2, "4012003"

    .line 61
    .line 62
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-nez p2, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 p2, 0x2

    .line 70
    goto :goto_1

    .line 71
    :sswitch_2
    const-string p2, "4012002"

    .line 72
    .line 73
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/4 p2, 0x1

    .line 81
    goto :goto_1

    .line 82
    :sswitch_3
    const-string v0, "4012001"

    .line 83
    .line 84
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_3

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 92
    .line 93
    .line 94
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    .line 95
    .line 96
    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v1, "nativeTemplateId is not find "

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string p4, " "

    .line 116
    .line 117
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, p1}, Lcom/windmill/sdk/widget/InterstitialViewManager;->a(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :pswitch_0
    new-instance p2, Landroid/content/Intent;

    .line 135
    .line 136
    const-class p3, Lcom/windmill/sdk/widget/InterstitialView_4102001;

    .line 137
    .line 138
    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .line 140
    .line 141
    iput-object p2, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->b:Landroid/content/Intent;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :pswitch_1
    new-instance p2, Landroid/content/Intent;

    .line 145
    .line 146
    const-class p3, Lcom/windmill/sdk/widget/InterstitialView_4012003;

    .line 147
    .line 148
    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .line 150
    .line 151
    iput-object p2, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->b:Landroid/content/Intent;

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :pswitch_2
    new-instance p2, Landroid/content/Intent;

    .line 155
    .line 156
    const-class p3, Lcom/windmill/sdk/widget/InterstitialView_4012002;

    .line 157
    .line 158
    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .line 160
    .line 161
    iput-object p2, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->b:Landroid/content/Intent;

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :pswitch_3
    new-instance p2, Landroid/content/Intent;

    .line 165
    .line 166
    const-class p3, Lcom/windmill/sdk/widget/InterstitialView_4012001;

    .line 167
    .line 168
    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .line 170
    .line 171
    iput-object p2, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->b:Landroid/content/Intent;

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_4
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    .line 175
    .line 176
    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 177
    .line 178
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    const-string p3, "nativeTemplateId is null"

    .line 183
    .line 184
    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-direct {p0, p1}, Lcom/windmill/sdk/widget/InterstitialViewManager;->a(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 188
    .line 189
    .line 190
    :goto_2
    return-void

    .line 191
    :sswitch_data_0
    .sparse-switch
        0x13769b74 -> :sswitch_3
        0x13769b75 -> :sswitch_2
        0x13769b76 -> :sswitch_1
        0x151d5c92 -> :sswitch_0
    .end sparse-switch

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterError"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->a:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/windmill/sdk/widget/a;->listener:Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/windmill/sdk/widget/ViewInteractionListener;->onAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static getBaseControl()Lcom/windmill/sdk/widget/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/windmill/sdk/widget/InterstitialViewManager;->d:Lcom/windmill/sdk/widget/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/windmill/sdk/widget/InterstitialViewManager;->e:Lcom/windmill/sdk/widget/a;

    .line 6
    .line 7
    sput-object v0, Lcom/windmill/sdk/widget/InterstitialViewManager;->d:Lcom/windmill/sdk/widget/a;

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/windmill/sdk/widget/InterstitialViewManager;->e:Lcom/windmill/sdk/widget/a;

    .line 11
    .line 12
    sget-object v0, Lcom/windmill/sdk/widget/InterstitialViewManager;->d:Lcom/windmill/sdk/widget/a;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/widget/a;->destroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->c:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->b:Landroid/content/Intent;

    .line 8
    .line 9
    sput-object v0, Lcom/windmill/sdk/widget/InterstitialViewManager;->d:Lcom/windmill/sdk/widget/a;

    .line 10
    .line 11
    sput-object v0, Lcom/windmill/sdk/widget/InterstitialViewManager;->e:Lcom/windmill/sdk/widget/a;

    .line 12
    .line 13
    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tips"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->b:Landroid/content/Intent;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->c:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "tips"

    .line 23
    .line 24
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->f:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->b:Landroid/content/Intent;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->c:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialViewManager;->b:Landroid/content/Intent;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    .line 43
    .line 44
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const-string v2, "interstitialView is null"

    .line 51
    .line 52
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v0}, Lcom/windmill/sdk/widget/InterstitialViewManager;->a(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method
