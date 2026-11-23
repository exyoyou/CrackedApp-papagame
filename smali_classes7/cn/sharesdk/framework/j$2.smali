.class Lcn/sharesdk/framework/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/framework/j;->a(Lcn/sharesdk/framework/ShareSDKCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/sharesdk/framework/ShareSDKCallback;

.field final synthetic b:Lcn/sharesdk/framework/j;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/j;Lcn/sharesdk/framework/ShareSDKCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/framework/j$2;->b:Lcn/sharesdk/framework/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/framework/j$2;->a:Lcn/sharesdk/framework/ShareSDKCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/mob/tools/utils/DH$DHResponse;->getDeviceKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "dk null"

    .line 17
    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcn/sharesdk/framework/j$2;->a:Lcn/sharesdk/framework/ShareSDKCallback;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcn/sharesdk/framework/ShareSDKCallback;->onCallback(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcn/sharesdk/framework/a/a;->c()Ljava/util/HashMap;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v3, p0, Lcn/sharesdk/framework/j$2;->b:Lcn/sharesdk/framework/j;

    .line 42
    .line 43
    invoke-static {v3, v0, v2, p1}, Lcn/sharesdk/framework/j;->a(Lcn/sharesdk/framework/j;Lcn/sharesdk/framework/a/a;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-lez v3, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcn/sharesdk/framework/j$2;->b:Lcn/sharesdk/framework/j;

    .line 56
    .line 57
    invoke-static {v1, v2}, Lcn/sharesdk/framework/j;->a(Lcn/sharesdk/framework/j;Ljava/util/HashMap;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :cond_2
    if-eqz v1, :cond_3

    .line 62
    .line 63
    new-instance v1, Lcn/sharesdk/framework/j$2$1;

    .line 64
    .line 65
    invoke-direct {v1, p0, v0, p1}, Lcn/sharesdk/framework/j$2$1;-><init>(Lcn/sharesdk/framework/j$2;Lcn/sharesdk/framework/a/a;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Lcn/sharesdk/framework/utils/k;->a(Lcn/sharesdk/framework/utils/k$a;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-object v1, p0, Lcn/sharesdk/framework/j$2;->b:Lcn/sharesdk/framework/j;

    .line 73
    .line 74
    iget-object v2, p0, Lcn/sharesdk/framework/j$2;->a:Lcn/sharesdk/framework/ShareSDKCallback;

    .line 75
    .line 76
    invoke-static {v1, v0, v2, p1}, Lcn/sharesdk/framework/j;->a(Lcn/sharesdk/framework/j;Lcn/sharesdk/framework/a/a;Lcn/sharesdk/framework/ShareSDKCallback;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcn/sharesdk/framework/j$2;->a:Lcn/sharesdk/framework/ShareSDKCallback;

    .line 89
    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-interface {p1, v0}, Lcn/sharesdk/framework/ShareSDKCallback;->onCallback(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    :goto_0
    return-void
.end method
