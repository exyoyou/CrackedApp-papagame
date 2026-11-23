.class Lcom/join/mgps/Util/w$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/w;->g(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OnekeyShare;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$from",
            "val$url",
            "val$gameid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/w$e;->b:Landroid/content/Context;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/Util/w$e;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/w$e;->d:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/Util/w$e;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "platform",
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/w$e;->b:Landroid/content/Context;

    .line 2
    .line 3
    iget v2, p0, Lcom/join/mgps/Util/w$e;->c:I

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, p0, Lcom/join/mgps/Util/w$e;->d:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v5, p0, Lcom/join/mgps/Util/w$e;->e:Ljava/lang/String;

    .line 9
    .line 10
    move-object v1, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/w;->a(Landroid/content/Context;Lcn/sharesdk/framework/Platform;IILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "platform",
            "i",
            "hashMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/w$e;->b:Landroid/content/Context;

    .line 2
    .line 3
    iget v2, p0, Lcom/join/mgps/Util/w$e;->c:I

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    iget-object v4, p0, Lcom/join/mgps/Util/w$e;->d:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v5, p0, Lcom/join/mgps/Util/w$e;->e:Ljava/lang/String;

    .line 9
    .line 10
    move-object v1, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/w;->a(Landroid/content/Context;Lcn/sharesdk/framework/Platform;IILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "platform",
            "i",
            "throwable"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_2

    .line 2
    .line 3
    instance-of p2, p3, Lcn/sharesdk/tencent/qq/utils/QQClientNotExistException;

    .line 4
    .line 5
    if-nez p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string v0, "QQClientNotExistException"

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    instance-of p2, p3, Lcn/sharesdk/wechat/utils/WechatClientNotExistException;

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-instance p3, Lcom/join/mgps/event/c0;

    .line 39
    .line 40
    const-string v0, "\u76ee\u524d\u60a8\u7684\u5fae\u4fe1\u7248\u672c\u8fc7\u4f4e\u6216\u672a\u5b89\u88c5\u5fae\u4fe1\uff0c\u9700\u8981\u5b89\u88c5\u5fae\u4fe1\u624d\u80fd\u4f7f\u7528"

    .line 41
    .line 42
    invoke-direct {p3, v0}, Lcom/join/mgps/event/c0;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    new-instance p3, Lcom/join/mgps/event/c0;

    .line 54
    .line 55
    const-string v0, "\u76ee\u524d\u60a8\u7684QQ\u7248\u672c\u8fc7\u4f4e\u6216\u672a\u5b89\u88c5QQ\uff0c\u9700\u8981\u5b89\u88c5QQ\u624d\u80fd\u4f7f\u7528"

    .line 56
    .line 57
    invoke-direct {p3, v0}, Lcom/join/mgps/event/c0;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/Util/w$e;->b:Landroid/content/Context;

    .line 64
    .line 65
    iget v3, p0, Lcom/join/mgps/Util/w$e;->c:I

    .line 66
    .line 67
    const/4 v4, 0x3

    .line 68
    iget-object v5, p0, Lcom/join/mgps/Util/w$e;->d:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v6, p0, Lcom/join/mgps/Util/w$e;->e:Ljava/lang/String;

    .line 71
    .line 72
    move-object v2, p1

    .line 73
    invoke-static/range {v1 .. v6}, Lcom/join/mgps/Util/w;->a(Landroid/content/Context;Lcn/sharesdk/framework/Platform;IILjava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
