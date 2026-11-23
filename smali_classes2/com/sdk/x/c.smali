.class public Lcom/sdk/x/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sdk/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sdk/e/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sdk/x/a;


# direct methods
.method public constructor <init>(Lcom/sdk/x/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/x/c;->b:Lcom/sdk/x/a;

    iput p2, p0, Lcom/sdk/x/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sdk/x/c;->b:Lcom/sdk/x/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/sdk/x/a;->a(IILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p2, Lcom/sdk/x/a;->h:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string p3, "onFailure: "

    .line 14
    .line 15
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sdk/x/c;->b:Lcom/sdk/x/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/sdk/x/a;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/sdk/p/b;->b(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_2

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/sdk/x/c;->b:Lcom/sdk/x/a;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/sdk/x/a;->b:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/sdk/s/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    const/4 v1, 0x1

    .line 27
    if-nez p4, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/sdk/x/c;->b:Lcom/sdk/x/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    const-string v2, "SDK\u89e3\u5bc6\u5f02\u5e38"

    .line 32
    .line 33
    const v3, 0x49bb1

    .line 34
    .line 35
    .line 36
    :try_start_1
    invoke-virtual {v0, v1, v3, v2}, Lcom/sdk/x/a;->a(IILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->useCache()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget-object v2, p0, Lcom/sdk/x/c;->b:Lcom/sdk/x/a;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/sdk/x/a;->b:Landroid/content/Context;

    .line 49
    .line 50
    iget v3, p0, Lcom/sdk/x/c;->a:I

    .line 51
    .line 52
    sget-object v4, Lcom/sdk/t/a;->g:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {p2, v0, p5, v4}, Lcom/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    const-string v4, "CUCC"

    .line 59
    .line 60
    :try_start_2
    invoke-static {v0}, Lcom/sdk/r/a;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_1

    .line 69
    .line 70
    invoke-static {v3, v4}, Lcom/sdk/b/a;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v3}, Lcom/sdk/r/a;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_1

    .line 83
    .line 84
    invoke-static {v2, v3, v0}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    .line 88
    .line 89
    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget v2, p0, Lcom/sdk/x/c;->a:I

    .line 93
    .line 94
    if-ne v2, v1, :cond_2

    .line 95
    .line 96
    const-string v1, "fakeMobile"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    :catch_0
    :cond_2
    move-object v4, p4

    .line 106
    iget-object v0, p0, Lcom/sdk/x/c;->b:Lcom/sdk/x/a;

    .line 107
    .line 108
    move v1, p1

    .line 109
    move-object v2, p2

    .line 110
    move v3, p3

    .line 111
    move-object v5, p5

    .line 112
    invoke-virtual/range {v0 .. v5}, Lcom/sdk/x/a;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    sget-object p2, Lcom/sdk/x/a;->h:Ljava/lang/String;

    .line 116
    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string p3, "getAuthoriseCode: "

    .line 123
    .line 124
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    return-void
.end method
