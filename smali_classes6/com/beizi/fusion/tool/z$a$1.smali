.class Lcom/beizi/fusion/tool/z$a$1;
.super Lcom/beizi/fusion/tool/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/tool/z$a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/beizi/fusion/tool/z$a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/tool/z$a;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/tool/z$a$1;->b:Lcom/beizi/fusion/tool/z$a;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/beizi/fusion/tool/z$a$1;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/beizi/fusion/tool/j;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 6

    .line 1
    const-string v0, "updateUserAgentTime"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/beizi/fusion/tool/z$a$1;->b:Lcom/beizi/fusion/tool/z$a;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/beizi/fusion/tool/z$a;->a(Lcom/beizi/fusion/tool/z$a;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eq p1, v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/beizi/fusion/tool/j;->a()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/beizi/fusion/tool/z$a$1;->a:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    sub-long/2addr v3, v1

    .line 35
    const-wide/32 v1, 0xa4cb800

    .line 36
    .line 37
    .line 38
    cmp-long v5, v3, v1

    .line 39
    .line 40
    if-gez v5, :cond_3

    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    new-instance v1, Landroid/webkit/WebView;

    .line 44
    .line 45
    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {p1}, Lcom/beizi/fusion/model/RequestInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/RequestInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2, v1}, Lcom/beizi/fusion/model/RequestInfo;->updateUserAgent(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lcom/beizi/ad/b;->d(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v2, "userAgent"

    .line 78
    .line 79
    invoke-static {p1, v2, v1}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {p1, v0, v1}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    :catch_0
    return-void
.end method
