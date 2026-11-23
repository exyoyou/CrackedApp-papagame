.class Lcn/sharesdk/wechat/utils/l$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/ShareSDKCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/wechat/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;Lcn/sharesdk/framework/Platform$ShareParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/sharesdk/framework/ShareSDKCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/wechat/utils/WXImageObject;

.field final synthetic c:Lcn/sharesdk/wechat/utils/k;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcn/sharesdk/framework/Platform$ShareParams;

.field final synthetic h:Landroid/content/Context;

.field final synthetic i:Lcn/sharesdk/wechat/utils/l;


# direct methods
.method constructor <init>(Lcn/sharesdk/wechat/utils/l;Ljava/lang/String;Lcn/sharesdk/wechat/utils/WXImageObject;Lcn/sharesdk/wechat/utils/k;ILjava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/Platform$ShareParams;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/l$6;->i:Lcn/sharesdk/wechat/utils/l;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/wechat/utils/l$6;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/sharesdk/wechat/utils/l$6;->b:Lcn/sharesdk/wechat/utils/WXImageObject;

    .line 6
    .line 7
    iput-object p4, p0, Lcn/sharesdk/wechat/utils/l$6;->c:Lcn/sharesdk/wechat/utils/k;

    .line 8
    .line 9
    iput p5, p0, Lcn/sharesdk/wechat/utils/l$6;->d:I

    .line 10
    .line 11
    iput-object p6, p0, Lcn/sharesdk/wechat/utils/l$6;->e:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcn/sharesdk/wechat/utils/l$6;->f:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcn/sharesdk/wechat/utils/l$6;->g:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 16
    .line 17
    iput-object p9, p0, Lcn/sharesdk/wechat/utils/l$6;->h:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/l$6;->i:Lcn/sharesdk/wechat/utils/l;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/l;->c()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    new-instance p1, Ljava/io/File;

    .line 16
    .line 17
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$6;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$6;->i:Lcn/sharesdk/wechat/utils/l;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcn/sharesdk/wechat/utils/l;->a(Ljava/io/File;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$6;->b:Lcn/sharesdk/wechat/utils/WXImageObject;

    .line 29
    .line 30
    iput-object p1, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->imagePath:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "ShareSDK share file with FileProvider path is: "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/l$6;->c:Lcn/sharesdk/wechat/utils/k;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcn/sharesdk/wechat/utils/k;->c()Lcn/sharesdk/framework/PlatformActionListener;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    new-instance p1, Ljava/lang/Throwable;

    .line 66
    .line 67
    const-string v0, "Wecaht Version is not new"

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$6;->c:Lcn/sharesdk/wechat/utils/k;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/k;->c()Lcn/sharesdk/framework/PlatformActionListener;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/l$6;->c:Lcn/sharesdk/wechat/utils/k;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcn/sharesdk/wechat/utils/k;->b()Lcn/sharesdk/framework/Platform;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/16 v2, 0x9

    .line 85
    .line 86
    invoke-interface {v0, v1, v2, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_0
    new-instance p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    .line 90
    .line 91
    invoke-direct {p1}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$6;->b:Lcn/sharesdk/wechat/utils/WXImageObject;

    .line 95
    .line 96
    iput-object v0, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 97
    .line 98
    iget v0, p0, Lcn/sharesdk/wechat/utils/l$6;->d:I

    .line 99
    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$6;->e:Ljava/lang/String;

    .line 103
    .line 104
    iput-object v0, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$6;->f:Ljava/lang/String;

    .line 107
    .line 108
    iput-object v0, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$6;->g:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcn/sharesdk/framework/InnerShareParams;->getEntranceMiniProgramUsername()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$6;->b:Lcn/sharesdk/wechat/utils/WXImageObject;

    .line 124
    .line 125
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/l$6;->g:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getEntranceMiniProgramUsername()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->entranceMiniProgramUsername:Ljava/lang/String;

    .line 132
    .line 133
    :cond_3
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$6;->g:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcn/sharesdk/framework/InnerShareParams;->getEntranceMiniProgramPath()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_4

    .line 144
    .line 145
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$6;->b:Lcn/sharesdk/wechat/utils/WXImageObject;

    .line 146
    .line 147
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/l$6;->g:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getEntranceMiniProgramPath()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXImageObject;->entranceMiniProgramPath:Ljava/lang/String;

    .line 154
    .line 155
    :cond_4
    :goto_1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$6;->i:Lcn/sharesdk/wechat/utils/l;

    .line 156
    .line 157
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/l$6;->h:Landroid/content/Context;

    .line 158
    .line 159
    iget-object v2, p0, Lcn/sharesdk/wechat/utils/l$6;->a:Ljava/lang/String;

    .line 160
    .line 161
    const/4 v3, 0x0

    .line 162
    invoke-static {v0, v1, v2, v3}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/l;Landroid/content/Context;Ljava/lang/String;Z)[B

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iput-object v0, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    .line 167
    .line 168
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l$6;->i:Lcn/sharesdk/wechat/utils/l;

    .line 169
    .line 170
    const-string v1, "img"

    .line 171
    .line 172
    iget v2, p0, Lcn/sharesdk/wechat/utils/l$6;->d:I

    .line 173
    .line 174
    iget-object v3, p0, Lcn/sharesdk/wechat/utils/l$6;->c:Lcn/sharesdk/wechat/utils/k;

    .line 175
    .line 176
    invoke-static {v0, p1, v1, v2, v3}, Lcn/sharesdk/wechat/utils/l;->a(Lcn/sharesdk/wechat/utils/l;Lcn/sharesdk/wechat/utils/WXMediaMessage;Ljava/lang/String;ILcn/sharesdk/wechat/utils/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :catchall_0
    move-exception p1

    .line 181
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 186
    .line 187
    .line 188
    :goto_2
    return-void
.end method

.method public synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcn/sharesdk/wechat/utils/l$6;->a(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
