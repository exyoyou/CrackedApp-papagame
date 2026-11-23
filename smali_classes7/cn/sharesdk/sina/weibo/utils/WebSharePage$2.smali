.class Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/ShareSDKCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/sina/weibo/utils/WebSharePage;->getReqUrl(Ljava/lang/String;Lcn/sharesdk/framework/ShareSDKCallback;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/framework/ShareSDKCallback;

.field final synthetic c:Lcn/sharesdk/sina/weibo/utils/WebSharePage;


# direct methods
.method constructor <init>(Lcn/sharesdk/sina/weibo/utils/WebSharePage;Ljava/lang/String;Lcn/sharesdk/framework/ShareSDKCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;->c:Lcn/sharesdk/sina/weibo/utils/WebSharePage;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;->b:Lcn/sharesdk/framework/ShareSDKCallback;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/mob/tools/network/KVPair;

    .line 7
    .line 8
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;->c:Lcn/sharesdk/sina/weibo/utils/WebSharePage;

    .line 9
    .line 10
    invoke-static {v2}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->access$500(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Lcn/sharesdk/framework/Platform$ShareParams;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "title"

    .line 19
    .line 20
    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/mob/tools/network/KVPair;

    .line 27
    .line 28
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;->c:Lcn/sharesdk/sina/weibo/utils/WebSharePage;

    .line 29
    .line 30
    invoke-static {v2}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->access$600(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "source"

    .line 35
    .line 36
    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/mob/tools/network/KVPair;

    .line 43
    .line 44
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;->c:Lcn/sharesdk/sina/weibo/utils/WebSharePage;

    .line 45
    .line 46
    invoke-static {v2}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->access$700(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "access_token"

    .line 51
    .line 52
    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/mob/tools/network/KVPair;

    .line 59
    .line 60
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;->c:Lcn/sharesdk/sina/weibo/utils/WebSharePage;

    .line 61
    .line 62
    invoke-static {v2}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->access$800(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Landroid/app/Activity;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v3, "packagename"

    .line 71
    .line 72
    invoke-direct {v1, v3, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/mob/tools/network/KVPair;

    .line 79
    .line 80
    const-string v2, "picinfo"

    .line 81
    .line 82
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;->a:Ljava/lang/String;

    .line 83
    .line 84
    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    new-instance v1, Lcom/mob/tools/network/KVPair;

    .line 91
    .line 92
    const-string v2, "luicode"

    .line 93
    .line 94
    const-string v3, "10000360"

    .line 95
    .line 96
    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    new-instance v1, Lcom/mob/tools/network/KVPair;

    .line 103
    .line 104
    const-string v2, "key_hash"

    .line 105
    .line 106
    invoke-direct {v1, v2, p1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    new-instance p1, Lcom/mob/tools/network/KVPair;

    .line 113
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v2, "OP_"

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;->c:Lcn/sharesdk/sina/weibo/utils/WebSharePage;

    .line 125
    .line 126
    invoke-static {v2}, Lcn/sharesdk/sina/weibo/utils/WebSharePage;->access$600(Lcn/sharesdk/sina/weibo/utils/WebSharePage;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const-string v2, "lfid"

    .line 138
    .line 139
    invoke-direct {p1, v2, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    new-instance p1, Lcom/mob/tools/network/KVPair;

    .line 146
    .line 147
    const-string v1, "version"

    .line 148
    .line 149
    const-string v2, "0041005000"

    .line 150
    .line 151
    invoke-direct {p1, v1, v2}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v1, "http://service.weibo.com/share/mobilesdk.php?"

    .line 163
    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;->b:Lcn/sharesdk/framework/ShareSDKCallback;

    .line 179
    .line 180
    if-eqz v0, :cond_0

    .line 181
    .line 182
    invoke-interface {v0, p1}, Lcn/sharesdk/framework/ShareSDKCallback;->onCallback(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_0
    return-void
.end method

.method public synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcn/sharesdk/sina/weibo/utils/WebSharePage$2;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
