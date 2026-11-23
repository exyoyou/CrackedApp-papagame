.class public Lkwai/c/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkwai/c/a;->a(Ljava/lang/String;Lfc/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lfc/a;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkwai/c/a;Lfc/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lkwai/c/a$b;->b:Lfc/a;

    .line 2
    .line 3
    iput-object p3, p0, Lkwai/c/a$b;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lec/c;->e(Lorg/json/JSONObject;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lkwai/c/a$b;->b:Lfc/a;

    .line 10
    .line 11
    iget-object v2, v1, Lfc/a;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "actionType"

    .line 14
    .line 15
    invoke-static {v0, v3, v2}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-wide v2, v1, Lfc/a;->b:D

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    cmpl-double v6, v2, v4

    .line 23
    .line 24
    if-ltz v6, :cond_0

    .line 25
    .line 26
    const-string v4, "purchaseAmount"

    .line 27
    .line 28
    invoke-static {v0, v4, v2, v3}, Lec/c;->f(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-wide v2, v1, Lfc/a;->c:J

    .line 32
    .line 33
    const-wide/16 v4, 0x0

    .line 34
    .line 35
    cmp-long v6, v2, v4

    .line 36
    .line 37
    if-lez v6, :cond_1

    .line 38
    .line 39
    long-to-double v2, v2

    .line 40
    const-string v4, "gameDuration"

    .line 41
    .line 42
    invoke-static {v0, v4, v2, v3}, Lec/c;->f(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v2, v1, Lfc/a;->d:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    iget-object v2, v1, Lfc/a;->d:Ljava/lang/String;

    .line 54
    .line 55
    const-string v3, "gameRoleName"

    .line 56
    .line 57
    invoke-static {v0, v3, v2}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget v2, v1, Lfc/a;->e:I

    .line 61
    .line 62
    if-lez v2, :cond_3

    .line 63
    .line 64
    int-to-double v2, v2

    .line 65
    const-string v4, "gameGrade"

    .line 66
    .line 67
    invoke-static {v0, v4, v2, v3}, Lec/c;->f(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget v2, v1, Lfc/a;->f:I

    .line 71
    .line 72
    if-lez v2, :cond_4

    .line 73
    .line 74
    int-to-double v2, v2

    .line 75
    const-string v4, "vipLevel"

    .line 76
    .line 77
    invoke-static {v0, v4, v2, v3}, Lec/c;->f(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 78
    .line 79
    .line 80
    :cond_4
    iget v2, v1, Lfc/a;->h:I

    .line 81
    .line 82
    if-lez v2, :cond_5

    .line 83
    .line 84
    int-to-double v2, v2

    .line 85
    const-string v4, "server_type"

    .line 86
    .line 87
    invoke-static {v0, v4, v2, v3}, Lec/c;->f(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 88
    .line 89
    .line 90
    :cond_5
    iget v2, v1, Lfc/a;->j:I

    .line 91
    .line 92
    if-lez v2, :cond_6

    .line 93
    .line 94
    int-to-double v2, v2

    .line 95
    const-string v4, "behaviorChannel"

    .line 96
    .line 97
    invoke-static {v0, v4, v2, v3}, Lec/c;->f(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 98
    .line 99
    .line 100
    :cond_6
    iget-object v2, v1, Lfc/a;->g:Lorg/json/JSONObject;

    .line 101
    .line 102
    const-string v3, "ext_params"

    .line 103
    .line 104
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_8

    .line 109
    .line 110
    if-nez v2, :cond_7

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    :try_start_0
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    :cond_8
    :goto_0
    iget-object v1, v1, Lfc/a;->i:Ljava/lang/String;

    .line 122
    .line 123
    const-string v2, "actionName"

    .line 124
    .line 125
    invoke-static {v0, v2, v1}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v2, "report log request json:"

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string v2, "HttpManager"

    .line 150
    .line 151
    invoke-static {v2, v1}, Lkc/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v1, Lgc/b;

    .line 155
    .line 156
    invoke-direct {v1}, Lgc/b;-><init>()V

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lkwai/c/a$b;->c:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    new-instance v3, Lkwai/c/a$b$a;

    .line 166
    .line 167
    invoke-direct {v3, p0}, Lkwai/c/a$b$a;-><init>(Lkwai/c/a$b;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2, v0, v3}, Lgc/b;->b(Ljava/lang/String;Ljava/lang/String;Lgc/c;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method
