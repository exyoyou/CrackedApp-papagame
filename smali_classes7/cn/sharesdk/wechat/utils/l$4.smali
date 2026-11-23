.class Lcn/sharesdk/wechat/utils/l$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/ShareSDKCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/k;ILcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/sharesdk/framework/ShareSDKCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/wechat/utils/k;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Landroid/graphics/Bitmap;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic i:Lcn/sharesdk/framework/Platform;

.field final synthetic j:Lcn/sharesdk/wechat/utils/l;


# direct methods
.method constructor <init>(Lcn/sharesdk/wechat/utils/l;Lcn/sharesdk/wechat/utils/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/l$4;->j:Lcn/sharesdk/wechat/utils/l;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/wechat/utils/l$4;->a:Lcn/sharesdk/wechat/utils/k;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/sharesdk/wechat/utils/l$4;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcn/sharesdk/wechat/utils/l$4;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcn/sharesdk/wechat/utils/l$4;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput p6, p0, Lcn/sharesdk/wechat/utils/l$4;->e:I

    .line 12
    .line 13
    iput-object p7, p0, Lcn/sharesdk/wechat/utils/l$4;->f:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    iput-object p8, p0, Lcn/sharesdk/wechat/utils/l$4;->g:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcn/sharesdk/wechat/utils/l$4;->h:Lcn/sharesdk/framework/PlatformActionListener;

    .line 18
    .line 19
    iput-object p10, p0, Lcn/sharesdk/wechat/utils/l$4;->i:Lcn/sharesdk/framework/Platform;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$4;->a:Lcn/sharesdk/wechat/utils/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/k;->a()Lcn/sharesdk/framework/Platform$ShareParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setUrl(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$4;->b:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/l$4;->j:Lcn/sharesdk/wechat/utils/l;

    .line 21
    .line 22
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcn/sharesdk/wechat/utils/l$4;->c:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v4, p0, Lcn/sharesdk/wechat/utils/l$4;->d:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v6, p0, Lcn/sharesdk/wechat/utils/l$4;->b:Ljava/lang/String;

    .line 31
    .line 32
    iget v7, p0, Lcn/sharesdk/wechat/utils/l$4;->e:I

    .line 33
    .line 34
    iget-object v8, p0, Lcn/sharesdk/wechat/utils/l$4;->a:Lcn/sharesdk/wechat/utils/k;

    .line 35
    .line 36
    move-object v5, p1

    .line 37
    invoke-static/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->b(Lcn/sharesdk/wechat/utils/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$4;->f:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/l$4;->j:Lcn/sharesdk/wechat/utils/l;

    .line 52
    .line 53
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v3, p0, Lcn/sharesdk/wechat/utils/l$4;->c:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v4, p0, Lcn/sharesdk/wechat/utils/l$4;->d:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v6, p0, Lcn/sharesdk/wechat/utils/l$4;->f:Landroid/graphics/Bitmap;

    .line 62
    .line 63
    iget v7, p0, Lcn/sharesdk/wechat/utils/l$4;->e:I

    .line 64
    .line 65
    iget-object v8, p0, Lcn/sharesdk/wechat/utils/l$4;->a:Lcn/sharesdk/wechat/utils/k;

    .line 66
    .line 67
    move-object v5, p1

    .line 68
    invoke-static/range {v1 .. v8}, Lcn/sharesdk/wechat/utils/l;->b(Lcn/sharesdk/wechat/utils/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/wechat/utils/k;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$4;->g:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-lez v0, :cond_2

    .line 81
    .line 82
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/l$4;->g:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v0, v1}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    iget-object v2, p0, Lcn/sharesdk/wechat/utils/l$4;->j:Lcn/sharesdk/wechat/utils/l;

    .line 93
    .line 94
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iget-object v4, p0, Lcn/sharesdk/wechat/utils/l$4;->c:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v5, p0, Lcn/sharesdk/wechat/utils/l$4;->d:Ljava/lang/String;

    .line 101
    .line 102
    iget v8, p0, Lcn/sharesdk/wechat/utils/l$4;->e:I

    .line 103
    .line 104
    iget-object v9, p0, Lcn/sharesdk/wechat/utils/l$4;->a:Lcn/sharesdk/wechat/utils/k;

    .line 105
    .line 106
    move-object v6, p1

    .line 107
    invoke-static/range {v2 .. v9}, Lcn/sharesdk/wechat/utils/l;->b(Lcn/sharesdk/wechat/utils/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$4;->j:Lcn/sharesdk/wechat/utils/l;

    .line 112
    .line 113
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iget-object v2, p0, Lcn/sharesdk/wechat/utils/l$4;->c:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v3, p0, Lcn/sharesdk/wechat/utils/l$4;->d:Ljava/lang/String;

    .line 120
    .line 121
    const-string v5, ""

    .line 122
    .line 123
    iget v6, p0, Lcn/sharesdk/wechat/utils/l$4;->e:I

    .line 124
    .line 125
    iget-object v7, p0, Lcn/sharesdk/wechat/utils/l$4;->a:Lcn/sharesdk/wechat/utils/k;

    .line 126
    .line 127
    move-object v4, p1

    .line 128
    invoke-static/range {v0 .. v7}, Lcn/sharesdk/wechat/utils/l;->b(Lcn/sharesdk/wechat/utils/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catchall_0
    move-exception p1

    .line 133
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$4;->h:Lcn/sharesdk/framework/PlatformActionListener;

    .line 134
    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/l$4;->i:Lcn/sharesdk/framework/Platform;

    .line 138
    .line 139
    const/16 v2, 0x9

    .line 140
    .line 141
    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcn/sharesdk/wechat/utils/l$4;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
