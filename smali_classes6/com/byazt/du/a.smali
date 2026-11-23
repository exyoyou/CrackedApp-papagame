.class public Lcom/byazt/du/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b9,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/du/a$c;
    }
.end annotation


# static fields
.field public static sp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/byazt/aq/uj;

.field public c:Lorg/json/JSONObject;

.field public n:Lcom/byazt/du/ve;

.field public tt:Lorg/json/JSONObject;

.field public uj:Lcom/byazt/du/a$c;

.field public ve:Lcom/byazt/aq/ve;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/du/a;->sp:Ljava/util/HashMap;

    .line 7
    .line 8
    const-string v1, "subtitle"

    .line 9
    .line 10
    const-string v2, "description"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/byazt/du/a;->sp:Ljava/util/HashMap;

    .line 16
    .line 17
    const-string v1, "source"

    .line 18
    .line 19
    const-string v2, "source|app.app_name"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/byazt/du/a;->sp:Ljava/util/HashMap;

    .line 25
    .line 26
    const-string v1, "screenshot"

    .line 27
    .line 28
    const-string v2, "dynamic_creative.screenshot"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/du/a;->c:Lorg/json/JSONObject;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/du/a;->tt:Lorg/json/JSONObject;

    .line 7
    .line 8
    new-instance p1, Lcom/byazt/aq/ve;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Lcom/byazt/aq/ve;-><init>(Lorg/json/JSONObject;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/byazt/du/a;->ve:Lcom/byazt/aq/ve;

    .line 14
    .line 15
    invoke-static {p3}, Lcom/byazt/du/a$c;->c(Lorg/json/JSONObject;)Lcom/byazt/du/a$c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/byazt/du/a;->uj:Lcom/byazt/du/a$c;

    .line 20
    .line 21
    invoke-static {p4}, Lcom/byazt/aq/uj;->c(Lorg/json/JSONObject;)Lcom/byazt/aq/uj;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/byazt/du/a;->a:Lcom/byazt/aq/uj;

    .line 26
    .line 27
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/byazt/du/a;->ve:Lcom/byazt/aq/ve;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v1, "adx_name"

    .line 161
    invoke-virtual {v0, v1}, Lcom/byazt/aq/ve;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "\\|"

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 156
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 157
    iget-object v4, p0, Lcom/byazt/du/a;->ve:Lcom/byazt/aq/ve;

    invoke-virtual {v4, v3}, Lcom/byazt/aq/ve;->tt(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    iget-object v4, p0, Lcom/byazt/du/a;->ve:Lcom/byazt/aq/ve;

    invoke-virtual {v4, v3}, Lcom/byazt/aq/ve;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private c(Lcom/byazt/aq/a;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/aq/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    invoke-static {}, Lcom/byazt/sr/uj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/or/x;->uj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    .line 165
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "cn"

    .line 166
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/byazt/aq/a;->a()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 167
    invoke-virtual {p1}, Lcom/byazt/aq/a;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 169
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    const-string v1, "{{"

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "}}"

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v1, :cond_6

    if-ltz v2, :cond_6

    if-ge v2, v1, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x2

    .line 172
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-direct {p0, v3}, Lcom/byazt/du/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 176
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x2

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/aq/a;->t(Ljava/lang/String;)V

    return-void

    .line 179
    :cond_6
    :goto_0
    invoke-virtual {p1, v0}, Lcom/byazt/aq/a;->t(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/byazt/aq/n;I)V
    .locals 5

    const/4 v0, 0x5

    const-string v1, "clickArea"

    if-eq p2, v0, :cond_3

    const/16 v0, 0xf

    if-eq p2, v0, :cond_3

    const/16 v0, 0x32

    if-eq p2, v0, :cond_3

    const/16 v0, 0x9a

    if-eq p2, v0, :cond_3

    const-string p2, "image"

    .line 119
    invoke-virtual {p1, p2}, Lcom/byazt/aq/n;->c(Ljava/lang/String;)V

    .line 120
    invoke-static {p2}, Lcom/byazt/du/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v0}, Lcom/byazt/aq/a;->gt(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/byazt/aq/n;->sp()Lcom/byazt/aq/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/byazt/aq/a;->gt(Ljava/lang/String;)V

    .line 124
    invoke-static {p2, v1}, Lcom/byazt/du/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-virtual {v2, p2}, Lcom/byazt/aq/a;->z(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/byazt/aq/n;->sp()Lcom/byazt/aq/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/byazt/aq/a;->z(Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-virtual {v2}, Lcom/byazt/aq/a;->jg()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v1, "imageLottieTosPath"

    .line 129
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v2, v1}, Lcom/byazt/aq/a;->gu(Ljava/lang/String;)V

    const-string v1, "animationsLoop"

    .line 131
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/byazt/aq/a;->t(Z)V

    const-string v1, "lottieAppNameMaxLength"

    .line 132
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/byazt/aq/a;->yv(I)V

    const-string v1, "lottieAdDescMaxLength"

    .line 133
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/byazt/aq/a;->md(I)V

    const-string v1, "lottieAdTitleMaxLength"

    .line 134
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/byazt/aq/a;->p(I)V

    .line 135
    :cond_1
    invoke-virtual {p1, v0}, Lcom/byazt/aq/n;->tt(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string p2, "."

    .line 136
    invoke-virtual {v0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_2

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 138
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "width"

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".width"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/byazt/du/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "height"

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".height"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/byazt/du/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 141
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 142
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/aq/n;->uj(Ljava/lang/String;)V

    .line 143
    :cond_2
    invoke-virtual {v2}, Lcom/byazt/aq/a;->k()V

    return-void

    :cond_3
    const-string p2, "video"

    .line 144
    invoke-virtual {p1, p2}, Lcom/byazt/aq/n;->c(Ljava/lang/String;)V

    .line 145
    invoke-static {p2}, Lcom/byazt/du/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p1}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/byazt/aq/a;->gt(Ljava/lang/String;)V

    .line 147
    invoke-static {p2, v1}, Lcom/byazt/du/i;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 148
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 149
    invoke-virtual {p1}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/byazt/aq/a;->z(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/byazt/aq/n;->sp()Lcom/byazt/aq/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/byazt/aq/a;->z(Ljava/lang/String;)V

    .line 151
    :cond_4
    invoke-virtual {p1}, Lcom/byazt/aq/n;->sp()Lcom/byazt/aq/a;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/byazt/aq/a;->gt(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v0}, Lcom/byazt/aq/n;->tt(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/aq/a;->sd()V

    return-void
.end method

.method private c(Lcom/byazt/aq/x;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mf/c;->ve()Lcom/byazt/mf/ve;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mf/c;->ve()Lcom/byazt/mf/ve;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/mf/ve;->z()I

    move-result v0

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {}, Lcom/byazt/sr/uj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/or/x;->c(Landroid/content/Context;)I

    move-result v0

    .line 20
    :goto_0
    invoke-static {}, Lcom/byazt/sr/uj;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/byazt/or/x;->tt(Landroid/content/Context;F)I

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/byazt/du/a;->uj:Lcom/byazt/du/a$c;

    iget-boolean v2, v1, Lcom/byazt/du/a$c;->ve:Z

    if-eqz v2, :cond_2

    iget v0, v1, Lcom/byazt/du/a$c;->c:F

    goto :goto_1

    :cond_2
    iget v1, v1, Lcom/byazt/du/a$c;->c:F

    int-to-float v0, v0

    .line 22
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 23
    :goto_1
    iget-object v1, p0, Lcom/byazt/du/a;->uj:Lcom/byazt/du/a$c;

    iget v1, v1, Lcom/byazt/du/a$c;->tt:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 24
    invoke-virtual {p1, v0}, Lcom/byazt/aq/x;->n(F)V

    .line 25
    invoke-virtual {p1}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object v0

    const-string v1, "auto"

    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/aq/a;->da(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, v2}, Lcom/byazt/aq/x;->a(F)V

    return-void

    .line 28
    :cond_3
    invoke-virtual {p1, v0}, Lcom/byazt/aq/x;->n(F)V

    .line 29
    invoke-static {}, Lcom/byazt/sr/uj;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/byazt/sr/uj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/or/x;->ve(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 31
    invoke-static {v0, v1}, Lcom/byazt/or/x;->tt(Landroid/content/Context;F)I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/byazt/du/a;->uj:Lcom/byazt/du/a$c;

    iget-boolean v2, v1, Lcom/byazt/du/a$c;->ve:Z

    if-eqz v2, :cond_4

    iget v0, v1, Lcom/byazt/du/a$c;->tt:F

    goto :goto_2

    :cond_4
    iget v1, v1, Lcom/byazt/du/a$c;->tt:F

    int-to-float v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 33
    :goto_2
    invoke-virtual {p1, v0}, Lcom/byazt/aq/x;->a(F)V

    .line 34
    invoke-virtual {p1}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object p1

    const-string v0, "fixed"

    .line 35
    invoke-virtual {p1, v0}, Lcom/byazt/aq/a;->da(Ljava/lang/String;)V

    return-void
.end method

.method private tt(Lcom/byazt/aq/x;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/du/a;->ve:Lcom/byazt/aq/ve;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    const-string v1, "image.0.url"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/aq/ve;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/byazt/du/a;->ve:Lcom/byazt/aq/ve;

    .line 30
    .line 31
    const-string v2, "title"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/byazt/aq/ve;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_4

    .line 38
    .line 39
    return-void

    .line 40
    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_5

    .line 49
    .line 50
    return-void

    .line 51
    :cond_5
    iget-object v3, p0, Lcom/byazt/du/a;->ve:Lcom/byazt/aq/ve;

    .line 52
    .line 53
    const-string v4, "description"

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Lcom/byazt/aq/ve;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-nez v3, :cond_6

    .line 60
    .line 61
    return-void

    .line 62
    :cond_6
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_7

    .line 71
    .line 72
    return-void

    .line 73
    :cond_7
    iget-object v5, p0, Lcom/byazt/du/a;->ve:Lcom/byazt/aq/ve;

    .line 74
    .line 75
    const-string v6, "icon"

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Lcom/byazt/aq/ve;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    if-nez v5, :cond_8

    .line 82
    .line 83
    return-void

    .line 84
    :cond_8
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_9

    .line 93
    .line 94
    return-void

    .line 95
    :cond_9
    iget-object v7, p0, Lcom/byazt/du/a;->ve:Lcom/byazt/aq/ve;

    .line 96
    .line 97
    const-string v8, "app.app_name"

    .line 98
    .line 99
    invoke-virtual {v7, v8}, Lcom/byazt/aq/ve;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    iget-object v8, p0, Lcom/byazt/du/a;->ve:Lcom/byazt/aq/ve;

    .line 104
    .line 105
    const-string v9, "source"

    .line 106
    .line 107
    invoke-virtual {v8, v9}, Lcom/byazt/aq/ve;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    if-nez v7, :cond_a

    .line 112
    .line 113
    if-nez v8, :cond_a

    .line 114
    .line 115
    return-void

    .line 116
    :cond_a
    if-eqz v7, :cond_b

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_b
    move-object v7, v8

    .line 120
    :goto_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_c

    .line 129
    .line 130
    return-void

    .line 131
    :cond_c
    const-string v8, "imageUrl"

    .line 132
    .line 133
    invoke-virtual {p1, v8, v0}, Lcom/byazt/aq/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v2, v1}, Lcom/byazt/aq/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v4, v3}, Lcom/byazt/aq/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v6, v5}, Lcom/byazt/aq/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v0, "app_name"

    .line 146
    .line 147
    invoke-virtual {p1, v0, v7}, Lcom/byazt/aq/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const/4 v0, 0x1

    .line 151
    invoke-virtual {p1, v0}, Lcom/byazt/aq/x;->c(Z)V

    .line 152
    .line 153
    .line 154
    return-void
.end method


# virtual methods
.method public c(DIDLjava/lang/String;Lcom/byazt/xl/u;)Lcom/byazt/aq/x;
    .locals 12

    move-object v1, p0

    .line 1
    iget-object v0, v1, Lcom/byazt/du/a;->ve:Lcom/byazt/aq/ve;

    invoke-virtual {v0}, Lcom/byazt/aq/ve;->c()V

    const/4 v2, 0x0

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/byazt/du/a;->a:Lcom/byazt/aq/uj;

    iget-object v3, v3, Lcom/byazt/aq/uj;->tt:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 4
    :goto_0
    iget-object v3, v1, Lcom/byazt/du/a;->c:Lorg/json/JSONObject;

    invoke-static {v3, v0}, Lcom/byazt/du/uj;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, v2}, Lcom/byazt/du/a;->c(Lorg/json/JSONObject;Lcom/byazt/aq/x;)Lcom/byazt/aq/x;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lcom/byazt/du/a;->c(Lcom/byazt/aq/x;)V

    .line 7
    new-instance v11, Lcom/byazt/du/n;

    move-object v3, v11

    move-wide v4, p1

    move v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/byazt/du/n;-><init>(DIDLjava/lang/String;Lcom/byazt/xl/u;)V

    .line 8
    new-instance v3, Lcom/byazt/du/n$c;

    invoke-direct {v3}, Lcom/byazt/du/n$c;-><init>()V

    .line 9
    iget-object v4, v1, Lcom/byazt/du/a;->uj:Lcom/byazt/du/a$c;

    iget v5, v4, Lcom/byazt/du/a$c;->c:F

    iput v5, v3, Lcom/byazt/du/n$c;->c:F

    .line 10
    iget v4, v4, Lcom/byazt/du/a$c;->tt:F

    iput v4, v3, Lcom/byazt/du/n$c;->tt:F

    const/4 v4, 0x0

    .line 11
    iput v4, v3, Lcom/byazt/du/n$c;->ve:F

    .line 12
    invoke-virtual {v11, v3}, Lcom/byazt/du/n;->c(Lcom/byazt/du/n$c;)V

    .line 13
    invoke-virtual {v11, v0, v4, v4}, Lcom/byazt/du/n;->c(Lcom/byazt/aq/x;FF)V

    .line 14
    invoke-virtual {v11}, Lcom/byazt/du/n;->c()V

    .line 15
    iget-object v0, v11, Lcom/byazt/du/n;->c:Lcom/byazt/aq/tt;

    iget v3, v0, Lcom/byazt/aq/tt;->uj:F

    const/high16 v4, 0x47800000    # 65536.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    return-object v2

    .line 16
    :cond_0
    iget-object v0, v0, Lcom/byazt/aq/tt;->a:Lcom/byazt/aq/x;

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;)Lcom/byazt/aq/x;
    .locals 6

    const-string v0, "type"

    .line 66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    .line 67
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "values"

    .line 68
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 69
    invoke-static {v0, v2}, Lcom/byazt/du/i;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v3, "sceneValues"

    .line 70
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/byazt/du/i;->c(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    .line 72
    invoke-static {v0, p1, v2}, Lcom/byazt/du/i;->c(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 73
    new-instance v3, Lcom/byazt/aq/x;

    invoke-direct {v3}, Lcom/byazt/aq/x;-><init>()V

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/byazt/aq/x;->tt(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v3, v1}, Lcom/byazt/aq/x;->tt(Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_c

    .line 77
    invoke-direct {p0, v3}, Lcom/byazt/du/a;->tt(Lcom/byazt/aq/x;)V

    const-string v1, "x"

    .line 78
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v3, v1}, Lcom/byazt/aq/x;->ve(F)V

    const-string v1, "y"

    .line 79
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v3, v1}, Lcom/byazt/aq/x;->uj(F)V

    const-string v1, "width"

    .line 80
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v3, v1}, Lcom/byazt/aq/x;->n(F)V

    const-string v1, "height"

    .line 81
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v3, v1}, Lcom/byazt/aq/x;->a(F)V

    const-string v1, "remainWidth"

    .line 82
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Lcom/byazt/aq/x;->sp(F)V

    .line 83
    new-instance v1, Lcom/byazt/aq/n;

    invoke-direct {v1}, Lcom/byazt/aq/n;-><init>()V

    .line 84
    invoke-virtual {v1, v0}, Lcom/byazt/aq/n;->c(Ljava/lang/String;)V

    const-string v4, "data"

    .line 85
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/byazt/aq/n;->tt(Ljava/lang/String;)V

    const-string v4, "filterData"

    .line 86
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/byazt/aq/n;->ve(Ljava/lang/String;)V

    const-string v4, "dataExtraInfo"

    .line 87
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/byazt/aq/n;->uj(Ljava/lang/String;)V

    .line 88
    invoke-static {v2}, Lcom/byazt/aq/a;->c(Lorg/json/JSONObject;)Lcom/byazt/aq/a;

    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Lcom/byazt/aq/n;->c(Lcom/byazt/aq/a;)V

    .line 90
    invoke-static {p1}, Lcom/byazt/aq/a;->c(Lorg/json/JSONObject;)Lcom/byazt/aq/a;

    move-result-object p1

    if-nez p1, :cond_1

    .line 91
    invoke-virtual {v1, v2}, Lcom/byazt/aq/n;->tt(Lcom/byazt/aq/a;)V

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v1, p1}, Lcom/byazt/aq/n;->tt(Lcom/byazt/aq/a;)V

    .line 93
    :goto_1
    invoke-direct {p0, v2}, Lcom/byazt/du/a;->c(Lcom/byazt/aq/a;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/byazt/du/a;->c(Lcom/byazt/aq/a;)V

    const-string p1, "video-image-budget"

    .line 95
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/byazt/du/a;->tt:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    const-string v4, "image_mode"

    .line 97
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 98
    invoke-direct {p0, v1, p1}, Lcom/byazt/du/a;->c(Lcom/byazt/aq/n;I)V

    .line 99
    :cond_2
    invoke-virtual {v1}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-virtual {v1}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object v4

    .line 101
    sget-object v5, Lcom/byazt/du/a;->sp:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/byazt/aq/a;->to()Z

    move-result v5

    if-nez v5, :cond_3

    .line 102
    sget-object v5, Lcom/byazt/du/a;->sp:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/byazt/aq/a;->gt(Ljava/lang/String;)V

    .line 103
    :cond_3
    invoke-virtual {v4}, Lcom/byazt/aq/a;->to()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 104
    invoke-virtual {v1}, Lcom/byazt/aq/n;->tt()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {v1}, Lcom/byazt/aq/n;->tt()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/byazt/du/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    :goto_2
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "star"

    .line 107
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "text_star"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const-string v4, "dynamic_creative.score_exact_i18n|"

    .line 108
    invoke-direct {p0, v4}, Lcom/byazt/du/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    const-string v5, "score-count"

    .line 109
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "score-count-type-1"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "score-count-type-2"

    .line 110
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const-string v4, "dynamic_creative.comment_num_i18n|"

    .line 111
    invoke-direct {p0, v4}, Lcom/byazt/du/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_8
    const-string v5, "root"

    .line 112
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v2}, Lcom/byazt/aq/a;->is()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "image.0.url"

    .line 113
    invoke-direct {p0, p1}, Lcom/byazt/du/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    :cond_9
    invoke-direct {p0}, Lcom/byazt/du/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "logo-union"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "logo"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 115
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "adx:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/byazt/du/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/byazt/aq/n;->tt(Ljava/lang/String;)V

    goto :goto_3

    .line 116
    :cond_b
    invoke-virtual {v1, v4}, Lcom/byazt/aq/n;->tt(Ljava/lang/String;)V

    .line 117
    :goto_3
    invoke-virtual {v1}, Lcom/byazt/aq/n;->ve()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/byazt/du/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/byazt/aq/n;->ve(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v3, v1}, Lcom/byazt/aq/x;->c(Lcom/byazt/aq/n;)V

    :cond_c
    return-object v3
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/aq/x;)Lcom/byazt/aq/x;
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "type"

    .line 36
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "custom-component-vessel"

    .line 37
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "componentId"

    .line 38
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 39
    iget-object v3, p0, Lcom/byazt/du/a;->a:Lcom/byazt/aq/uj;

    if-eqz v3, :cond_1

    .line 40
    new-instance v3, Lcom/byazt/du/ve;

    invoke-direct {v3}, Lcom/byazt/du/ve;-><init>()V

    iput-object v3, p0, Lcom/byazt/du/a;->n:Lcom/byazt/du/ve;

    .line 41
    iget-object v4, p0, Lcom/byazt/du/a;->a:Lcom/byazt/aq/uj;

    iget-object v4, v4, Lcom/byazt/aq/uj;->c:Ljava/util/List;

    invoke-virtual {v3, v4, v2, p1}, Lcom/byazt/du/ve;->c(Ljava/util/List;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object p1, v2

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Lcom/byazt/du/a;->c(Lorg/json/JSONObject;)Lcom/byazt/aq/x;

    move-result-object v2

    .line 43
    invoke-virtual {v2, p2}, Lcom/byazt/aq/x;->c(Lcom/byazt/aq/x;)V

    const-string p2, "children"

    .line 44
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_2

    .line 45
    invoke-virtual {v2, v0}, Lcom/byazt/aq/x;->c(Ljava/util/List;)V

    return-object v2

    .line 46
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 48
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 49
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 50
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "tag-group"

    .line 51
    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 52
    invoke-virtual {v2}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/byazt/aq/a;->s()I

    move-result v7

    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_5

    .line 54
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 55
    invoke-virtual {p0, v9, v2}, Lcom/byazt/du/a;->c(Lorg/json/JSONObject;Lcom/byazt/aq/x;)Lcom/byazt/aq/x;

    move-result-object v9

    .line 56
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v2}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    move-result-object v10

    invoke-virtual {v10}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "skip-with-time"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "transparent"

    .line 57
    invoke-virtual {v2}, Lcom/byazt/aq/x;->gu()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v2}, Lcom/byazt/aq/x;->gu()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 58
    invoke-virtual {v2}, Lcom/byazt/aq/x;->gu()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/byazt/aq/x;->ve(Ljava/lang/String;)V

    .line 59
    :cond_4
    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 61
    :cond_5
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 63
    invoke-virtual {v2, p2}, Lcom/byazt/aq/x;->c(Ljava/util/List;)V

    .line 64
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 65
    invoke-virtual {v2, v0}, Lcom/byazt/aq/x;->tt(Ljava/util/List;)V

    :cond_9
    return-object v2
.end method
