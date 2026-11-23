.class public Lcom/windmill/sdk/widget/SplashViewManager;
.super Lcom/windmill/sdk/widget/a;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(IILcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "nativeAdData",
            "serverExtra",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
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
    invoke-direct {p0, p3, p4, p5}, Lcom/windmill/sdk/widget/a;-><init>(Lcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    iput-boolean p3, p0, Lcom/windmill/sdk/widget/SplashViewManager;->a:Z

    .line 6
    .line 7
    iput p1, p0, Lcom/windmill/sdk/widget/SplashViewManager;->b:I

    .line 8
    .line 9
    iput p2, p0, Lcom/windmill/sdk/widget/SplashViewManager;->c:I

    .line 10
    .line 11
    return-void
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
    iget-boolean v0, p0, Lcom/windmill/sdk/widget/SplashViewManager;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/windmill/sdk/widget/SplashViewManager;->a:Z

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


# virtual methods
.method public show(Landroid/view/ViewGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewGroup"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/a;->getNativeTemplateId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_3

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const v2, -0x5663f28f

    .line 18
    .line 19
    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v1, "2002001"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 34
    :goto_1
    if-eqz v0, :cond_2

    .line 35
    .line 36
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    .line 37
    .line 38
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const-string v1, "nativeTemplateId is not find"

    .line 45
    .line 46
    invoke-direct {p1, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/windmill/sdk/widget/SplashViewManager;->a(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    new-instance v0, Lcom/windmill/sdk/widget/SplashView_2002001;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget v2, p0, Lcom/windmill/sdk/widget/SplashViewManager;->b:I

    .line 60
    .line 61
    iget v3, p0, Lcom/windmill/sdk/widget/SplashViewManager;->c:I

    .line 62
    .line 63
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/windmill/sdk/widget/SplashView_2002001;-><init>(Landroid/content/Context;IILcom/windmill/sdk/widget/a;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/SplashBaseView;->startCountDown()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    .line 77
    .line 78
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const-string v1, "nativeTemplateId is null"

    .line 85
    .line 86
    invoke-direct {p1, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p1}, Lcom/windmill/sdk/widget/SplashViewManager;->a(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    .line 94
    .line 95
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const-string v1, "show splashView is null"

    .line 102
    .line 103
    invoke-direct {p1, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, p1}, Lcom/windmill/sdk/widget/SplashViewManager;->a(Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catch_0
    move-exception p1

    .line 111
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    .line 112
    .line 113
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v3, "show viewGroup is null "

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {v0, v1, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, v0}, Lcom/windmill/sdk/widget/SplashViewManager;->a(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 144
    .line 145
    .line 146
    :goto_2
    return-void
.end method
