.class final Lcom/kwad/components/core/webview/tachikoma/i$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/webview/jshandler/bd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/webview/tachikoma/i;->b(Lcom/kwad/sdk/components/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic atm:Lcom/kwad/components/core/webview/tachikoma/i;


# direct methods
.method constructor <init>(Lcom/kwad/components/core/webview/tachikoma/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/webview/tachikoma/i$14;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/i$14;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/webview/tachikoma/i;->asX:Lcom/kwad/sdk/core/webview/e;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/b;->Pu()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/i$14;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/kwad/components/core/webview/tachikoma/i;->asX:Lcom/kwad/sdk/core/webview/e;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/b;->Pu()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/kwad/sdk/core/response/model/AdResultData;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/response/model/AdResultData;->setAdTemplateList(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    iget-wide v2, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->llsid:J

    .line 41
    .line 42
    iput-wide v2, v1, Lcom/kwad/sdk/core/response/model/BaseResultData;->llsid:J

    .line 43
    .line 44
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/i$14;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/i;->a(Lcom/kwad/components/core/webview/tachikoma/i;Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/i$14;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/kwad/components/core/webview/tachikoma/i;->asy:Lcom/kwad/components/core/webview/tachikoma/j;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/kwad/components/core/webview/tachikoma/i;->g(Lcom/kwad/components/core/webview/tachikoma/i;)Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/c;->r(Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v1, v0}, Lcom/kwad/components/core/webview/tachikoma/j;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/i$14;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/kwad/components/core/webview/tachikoma/i;->h(Lcom/kwad/components/core/webview/tachikoma/i;)Lcom/kwad/sdk/components/t;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/i$14;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/kwad/components/core/webview/tachikoma/i;->h(Lcom/kwad/components/core/webview/tachikoma/i;)Lcom/kwad/sdk/components/t;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v0}, Lcom/kwad/sdk/components/t;->getUniqId()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-object v1, p0, Lcom/kwad/components/core/webview/tachikoma/i$14;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/kwad/components/core/webview/tachikoma/i;->g(Lcom/kwad/components/core/webview/tachikoma/i;)Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Lcom/kwad/components/core/offline/a/f/a/a;->a(ILcom/kwad/sdk/core/response/model/AdResultData;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/i$14;->atm:Lcom/kwad/components/core/webview/tachikoma/i;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/kwad/components/core/webview/tachikoma/i;->m(Lcom/kwad/components/core/webview/tachikoma/i;)Lcom/kwad/components/core/webview/jshandler/bc;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v1, Lcom/kwad/components/core/e/d/d;

    .line 98
    .line 99
    invoke-direct {v1, p1}, Lcom/kwad/components/core/e/d/d;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/jshandler/bc;->setApkDownloadHelper(Lcom/kwad/components/core/e/d/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
