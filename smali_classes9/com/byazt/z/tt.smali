.class public Lcom/byazt/z/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x85,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/z/tt$n;,
        Lcom/byazt/z/tt$c;,
        Lcom/byazt/z/tt$ve;,
        Lcom/byazt/z/tt$tt;,
        Lcom/byazt/z/tt$uj;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "tt"

.field public static tt:Lcom/byazt/z/tt$ve;

.field public static ve:Lcom/byazt/z/tt$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Lcom/byazt/k/c;)I
    .locals 8
    .param p0    # Lcom/byazt/k/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "download_dir"

    .line 89
    invoke-virtual {p0, v0}, Lcom/byazt/k/c;->uj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "dir_name"

    .line 90
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x5

    return p0

    .line 92
    :cond_1
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object v0

    const-string v2, "get_download_info_by_list"

    invoke-virtual {v0, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const-string v0, "ah_plans"

    .line 93
    invoke-virtual {p0, v0}, Lcom/byazt/k/c;->n(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, -0x1

    if-eqz v0, :cond_8

    .line 94
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_8

    .line 95
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 96
    invoke-static {v5}, Lcom/byazt/i/c;->c(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "type"

    .line 97
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "plan_a"

    .line 98
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "plan_b"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "plan_e"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "plan_f"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    const-string v7, "plan_d"

    .line 99
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "plan_h"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const-string v7, "plan_g"

    .line 100
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 101
    invoke-static {v5, p0}, Lcom/byazt/z/tt;->tt(Lorg/json/JSONObject;Lcom/byazt/k/c;)Lcom/byazt/z/c;

    move-result-object v2

    .line 102
    iget v2, v2, Lcom/byazt/z/c;->tt:I

    if-nez v2, :cond_7

    :cond_5
    :goto_2
    return v1

    .line 103
    :cond_6
    :goto_3
    invoke-static {v5, p0}, Lcom/byazt/z/tt;->c(Lorg/json/JSONObject;Lcom/byazt/k/c;)Lcom/byazt/z/c;

    move-result-object v2

    .line 104
    iget v2, v2, Lcom/byazt/z/c;->tt:I

    if-nez v2, :cond_7

    return v1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    return v2
.end method

.method public static c(Lorg/json/JSONObject;Lcom/byazt/k/c;)Lcom/byazt/z/c;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 105
    new-instance v0, Lcom/byazt/z/c;

    invoke-direct {v0}, Lcom/byazt/z/c;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "type"

    .line 106
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    iput-object v1, v0, Lcom/byazt/z/c;->c:Ljava/lang/String;

    const-string v2, "plan_b"

    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v1, "custom"

    .line 109
    iput-object v1, v0, Lcom/byazt/z/c;->n:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, p0, p1}, Lcom/byazt/a/uj;->c(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/k/c;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 111
    iput v3, v0, Lcom/byazt/z/c;->tt:I

    return-object v0

    .line 112
    :cond_1
    invoke-static {v0, v2}, Lcom/byazt/z/tt;->c(Lcom/byazt/z/c;I)V

    goto :goto_1

    :cond_2
    const-string v1, "device_plans"

    .line 113
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    iput-object v1, v0, Lcom/byazt/z/c;->n:Ljava/lang/String;

    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ","

    .line 116
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    .line 118
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6, p0, p1}, Lcom/byazt/a/uj;->c(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/k/c;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 119
    iput v3, v0, Lcom/byazt/z/c;->tt:I

    return-object v0

    .line 120
    :cond_3
    invoke-static {v0, v2}, Lcom/byazt/z/tt;->c(Lcom/byazt/z/c;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;Lcom/byazt/k/c;)Lcom/byazt/z/c;
    .locals 2

    .line 121
    new-instance v0, Lcom/byazt/z/c;

    invoke-direct {v0}, Lcom/byazt/z/c;-><init>()V

    if-eqz p0, :cond_4

    .line 122
    invoke-static {}, Lcom/byazt/i/n;->ve()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "type"

    .line 123
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/byazt/z/c;->c:Ljava/lang/String;

    const-string p0, "bi"

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p3, p0, v1}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_1

    .line 125
    iput v1, v0, Lcom/byazt/z/c;->tt:I

    return-object v0

    .line 126
    :cond_1
    invoke-static {p2}, Lcom/byazt/z/tt;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    .line 127
    iput p0, v0, Lcom/byazt/z/c;->tt:I

    goto :goto_0

    .line 128
    :cond_2
    invoke-static {p1}, Lcom/byazt/i/c;->c(Ljava/lang/String;)Lcom/byazt/z/a$c;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 129
    iput v1, v0, Lcom/byazt/z/c;->tt:I

    goto :goto_0

    :cond_3
    const/16 p0, 0x9

    .line 130
    iput p0, v0, Lcom/byazt/z/c;->tt:I

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/z/tt$c;)Lcom/byazt/z/tt$c;
    .locals 0

    .line 1
    sput-object p0, Lcom/byazt/z/tt;->ve:Lcom/byazt/z/tt$c;

    return-object p0
.end method

.method public static c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 189
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x320

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x1f4

    .line 191
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static c(ILorg/json/JSONObject;)V
    .locals 3

    const-string v0, "show_unknown_source_on_startup"

    .line 175
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 176
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "scene"

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    .line 177
    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 178
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 179
    :goto_2
    invoke-static {}, Lcom/byazt/zz/ve;->bm()Lcom/byazt/zl/ve;

    move-result-object p1

    const-string v0, "guide_auth_dialog_confirm"

    invoke-interface {p1, p0, v0, v1}, Lcom/byazt/zl/ve;->tt(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic c(IZZ)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/byazt/z/tt;->tt(IZZ)V

    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/content/Intent;ILorg/json/JSONObject;Lcom/byazt/z/tt$tt;)V
    .locals 7

    .line 180
    sget-object v0, Lcom/byazt/z/tt;->ve:Lcom/byazt/z/tt$c;

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/byazt/g/c;->c()Lcom/byazt/g/c;

    move-result-object v0

    sget-object v1, Lcom/byazt/z/tt;->ve:Lcom/byazt/z/tt$c;

    invoke-virtual {v0, v1}, Lcom/byazt/g/c;->tt(Lcom/byazt/g/c$c;)V

    const/4 v0, 0x0

    .line 182
    sput-object v0, Lcom/byazt/z/tt;->ve:Lcom/byazt/z/tt$c;

    .line 183
    :cond_0
    new-instance v0, Lcom/byazt/z/tt$c;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/byazt/z/tt$c;-><init>(Landroid/content/Context;Landroid/content/Intent;ILorg/json/JSONObject;Lcom/byazt/z/tt$tt;)V

    sput-object v0, Lcom/byazt/z/tt;->ve:Lcom/byazt/z/tt$c;

    .line 184
    invoke-static {}, Lcom/byazt/g/c;->c()Lcom/byazt/g/c;

    move-result-object p0

    sget-object p1, Lcom/byazt/z/tt;->ve:Lcom/byazt/z/tt$c;

    invoke-virtual {p0, p1}, Lcom/byazt/g/c;->c(Lcom/byazt/g/c$c;)V

    return-void
.end method

.method private static c(Lcom/byazt/z/c;I)V
    .locals 2

    .line 131
    iget v0, p0, Lcom/byazt/z/c;->tt:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p1

    .line 132
    iput v0, p0, Lcom/byazt/z/c;->tt:I

    return-void

    .line 133
    :cond_0
    iput p1, p0, Lcom/byazt/z/c;->tt:I

    return-void
.end method

.method public static c(Lcom/byazt/z/tt$ve;)V
    .locals 0

    .line 192
    sput-object p0, Lcom/byazt/z/tt;->tt:Lcom/byazt/z/tt$ve;

    return-void
.end method

.method public static c()Z
    .locals 2

    .line 174
    sget v0, Lcom/byazt/z/tt$n;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 170
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/i/n;->ve()Z

    move-result v1

    const/16 v2, 0x1a

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_1

    .line 171
    invoke-static {p0}, Lcom/byazt/z/tt;->uj(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 172
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v2, :cond_2

    .line 173
    invoke-static {p0}, Lcom/byazt/z/tt;->n(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_2
    return v0
.end method

.method public static synthetic c(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/byazt/z/tt;->tt(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Landroid/content/Intent;ILorg/json/JSONObject;)Z
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 160
    :try_start_0
    invoke-static {}, Lcom/byazt/i/n;->ve()Z

    move-result v1

    const/16 v2, 0x1a

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_0

    invoke-static {p0}, Lcom/byazt/z/tt;->uj(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Lcom/byazt/a/a;

    invoke-direct {v1, p0}, Lcom/byazt/a/a;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {v1}, Lcom/byazt/a/c;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    new-instance v2, Lcom/byazt/z/tt$1;

    invoke-direct {v2}, Lcom/byazt/z/tt$1;-><init>()V

    invoke-static {p0, p1, p2, p3, v2}, Lcom/byazt/z/tt;->c(Landroid/content/Context;Landroid/content/Intent;ILorg/json/JSONObject;Lcom/byazt/z/tt$tt;)V

    .line 164
    invoke-virtual {v1}, Lcom/byazt/a/a;->tt()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/byazt/z/tt;->tt(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0

    .line 165
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v2, :cond_1

    invoke-static {p0}, Lcom/byazt/z/tt;->n(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    new-instance v1, Lcom/byazt/a/tt;

    invoke-direct {v1, p0}, Lcom/byazt/a/tt;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {v1}, Lcom/byazt/a/c;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    new-instance v2, Lcom/byazt/z/tt$2;

    invoke-direct {v2}, Lcom/byazt/z/tt$2;-><init>()V

    invoke-static {p0, p1, p2, p3, v2}, Lcom/byazt/z/tt;->c(Landroid/content/Context;Landroid/content/Intent;ILorg/json/JSONObject;Lcom/byazt/z/tt$tt;)V

    .line 169
    invoke-virtual {v1}, Lcom/byazt/a/tt;->tt()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/byazt/z/tt;->tt(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_1
    return v0
.end method

.method public static c(Landroid/content/Context;Landroid/content/Intent;Lorg/json/JSONObject;ILcom/byazt/z/c;)Z
    .locals 9
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/byazt/z/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "jump_interval"

    const-wide/16 v2, 0x0

    .line 142
    invoke-virtual {p2, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    return v0

    :cond_1
    const-string v1, "sp_ah_config"

    .line 143
    invoke-static {p0, v1, v0}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v6, "last_jump_unknown_source_time"

    .line 144
    invoke-interface {v1, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    const-wide/32 v2, 0xea60

    div-long/2addr v7, v2

    cmp-long v2, v7, v4

    if-gez v2, :cond_2

    return v0

    .line 146
    :cond_2
    invoke-static {p0}, Lcom/byazt/z/tt;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 147
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "show_unknown_source_dialog"

    .line 148
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 149
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/byazt/y/JumpUnknownSourceActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    .line 150
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "intent"

    .line 151
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "config"

    .line 152
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "id"

    .line 153
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    :try_start_0
    invoke-static {p0, v1, v0}, Lcom/byazt/z/tt;->c(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 155
    invoke-static {p3, p2}, Lcom/byazt/z/tt;->uj(ILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return v2

    :catchall_0
    move-exception p0

    if-eqz p4, :cond_5

    .line 156
    iput v2, p4, Lcom/byazt/z/c;->tt:I

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "tryShowUnknownSourceDialog"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/byazt/z/tt;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p4, Lcom/byazt/z/c;->ve:Ljava/lang/String;

    :cond_5
    return v0

    .line 158
    :cond_6
    invoke-static {p0, p1, p3, p2}, Lcom/byazt/z/tt;->c(Landroid/content/Context;Landroid/content/Intent;ILorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 159
    invoke-static {p3, p2}, Lcom/byazt/z/tt;->ve(ILorg/json/JSONObject;)V

    :cond_7
    return v2

    :cond_8
    :goto_1
    return v0
.end method

.method public static c(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "start_only_for_android"

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 185
    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    return v0

    .line 187
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method private static c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Landroid/content/Intent;Lorg/json/JSONObject;Z)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p3, :cond_18

    if-nez p1, :cond_0

    goto/16 :goto_8

    .line 8
    :cond_0
    new-instance v1, Lcom/byazt/z/c;

    invoke-direct {v1}, Lcom/byazt/z/c;-><init>()V

    const-string v2, "type"

    .line 9
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 11
    invoke-static {p1}, Lcom/byazt/k/c;->c(Lcom/byazt/t/DownloadInfo;)Lcom/byazt/k/c;

    move-result-object v3

    .line 12
    iput-object v2, v1, Lcom/byazt/z/c;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "plan_f"

    const/4 v6, 0x4

    const-string v7, "plan_d"

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x1

    packed-switch v4, :pswitch_data_0

    :goto_0
    const/4 v4, -0x1

    goto :goto_1

    :pswitch_0
    const-string v4, "plan_h"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x7

    goto :goto_1

    :pswitch_1
    const-string v4, "plan_g"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x6

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x5

    goto :goto_1

    :pswitch_3
    const-string v4, "plan_e"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x4

    goto :goto_1

    :pswitch_4
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x3

    goto :goto_1

    :pswitch_5
    const-string v4, "plan_c"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x2

    goto :goto_1

    :pswitch_6
    const-string v4, "plan_b"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x1

    goto :goto_1

    :pswitch_7
    const-string v4, "plan_a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_7

    :pswitch_8
    const-string p4, "bh"

    .line 14
    invoke-virtual {v3, p4}, Lcom/byazt/k/c;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v2, "s"

    invoke-virtual {v3, v2}, Lcom/byazt/k/c;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/byazt/i/ve;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 15
    invoke-static {p3, p4, p0, v3}, Lcom/byazt/z/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;Lcom/byazt/k/c;)Lcom/byazt/z/c;

    move-result-object p3

    .line 16
    iget v2, p3, Lcom/byazt/z/c;->tt:I

    if-eqz v2, :cond_9

    move-object v1, p3

    goto/16 :goto_7

    .line 17
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 18
    invoke-static {}, Lcom/byazt/k/c;->tt()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p0, p4}, Lcom/byazt/i/c;->c(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 19
    :try_start_0
    invoke-static {p0, p2}, Lcom/byazt/z/ve;->c(Landroid/content/Context;Landroid/content/Intent;)I

    .line 20
    iput v0, v1, Lcom/byazt/z/c;->tt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Lcom/byazt/k/c;->tt()Lorg/json/JSONObject;

    move-result-object p4

    invoke-static {p4, p0, p3}, Lcom/byazt/i/c;->c(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_3

    :catchall_0
    move-exception p4

    .line 22
    :try_start_1
    iput v10, v1, Lcom/byazt/z/c;->tt:I

    .line 23
    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v1, Lcom/byazt/z/c;->ve:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    invoke-static {}, Lcom/byazt/k/c;->tt()Lorg/json/JSONObject;

    move-result-object p4

    invoke-static {p4, p0, p3}, Lcom/byazt/i/c;->c(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_7

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/byazt/k/c;->tt()Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2, p0, p3}, Lcom/byazt/i/c;->c(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Z

    throw p1

    :cond_a
    const/16 p0, 0xb

    .line 25
    iput p0, v1, Lcom/byazt/z/c;->tt:I

    goto/16 :goto_7

    .line 26
    :pswitch_9
    invoke-static {p3, v3}, Lcom/byazt/z/tt;->tt(Lorg/json/JSONObject;Lcom/byazt/k/c;)Lcom/byazt/z/c;

    move-result-object p4

    .line 27
    iget v2, p4, Lcom/byazt/z/c;->tt:I

    if-eqz v2, :cond_b

    goto/16 :goto_6

    .line 28
    :cond_b
    invoke-static {p0, p1, p3, v1, v3}, Lcom/byazt/z/tt;->c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;Lcom/byazt/z/c;Lcom/byazt/k/c;)Z

    move-result p0

    :goto_2
    move v0, p0

    goto/16 :goto_7

    .line 29
    :pswitch_a
    iput-object v7, v1, Lcom/byazt/z/c;->c:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/byazt/i/n;->uj()Z

    move-result p3

    if-nez p3, :cond_c

    .line 31
    iput v8, v1, Lcom/byazt/z/c;->tt:I

    goto/16 :goto_7

    .line 32
    :cond_c
    :try_start_2
    invoke-static {p0, p2}, Lcom/byazt/z/ve;->c(Landroid/content/Context;Landroid/content/Intent;)I

    .line 33
    iput v0, v1, Lcom/byazt/z/c;->tt:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_7

    :catchall_2
    move-exception p0

    .line 34
    iput v6, v1, Lcom/byazt/z/c;->tt:I

    .line 35
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/byazt/z/c;->ve:Ljava/lang/String;

    goto/16 :goto_7

    .line 36
    :pswitch_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_d

    invoke-static {}, Lcom/byazt/i/n;->ve()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_d
    const-string v2, "enable_for_all"

    .line 37
    invoke-virtual {p3, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v10, :cond_e

    const/4 v2, 0x1

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_f

    if-eqz p4, :cond_16

    :cond_f
    const-string p4, "show_unknown_source_on_startup"

    .line 38
    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p4

    if-ne p4, v10, :cond_10

    goto :goto_5

    :cond_10
    const/4 v10, 0x0

    :goto_5
    if-nez v10, :cond_16

    .line 39
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p4

    invoke-static {p0, p2, p3, p4, v1}, Lcom/byazt/z/tt;->c(Landroid/content/Context;Landroid/content/Intent;Lorg/json/JSONObject;ILcom/byazt/z/c;)Z

    move-result p0

    goto :goto_2

    .line 40
    :pswitch_c
    invoke-static {p3, v3}, Lcom/byazt/z/tt;->c(Lorg/json/JSONObject;Lcom/byazt/k/c;)Lcom/byazt/z/c;

    move-result-object p4

    .line 41
    iget v2, p4, Lcom/byazt/z/c;->tt:I

    if-eqz v2, :cond_11

    goto :goto_6

    .line 42
    :cond_11
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isSavePathRedirected()Z

    move-result p4

    if-nez p4, :cond_12

    .line 43
    invoke-virtual {p1, v9}, Lcom/byazt/t/DownloadInfo;->getAntiHijackErrorCode(I)I

    move-result p0

    iput p0, v1, Lcom/byazt/z/c;->tt:I

    goto :goto_7

    .line 44
    :cond_12
    invoke-static {p0, p1, p3, v1}, Lcom/byazt/z/tt;->tt(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;Lcom/byazt/z/c;)Z

    move-result p0

    goto :goto_2

    .line 45
    :pswitch_d
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isSavePathRedirected()Z

    move-result p4

    if-nez p4, :cond_13

    .line 46
    invoke-virtual {p1, v9}, Lcom/byazt/t/DownloadInfo;->getAntiHijackErrorCode(I)I

    move-result p0

    iput p0, v1, Lcom/byazt/z/c;->tt:I

    goto :goto_7

    .line 47
    :cond_13
    :pswitch_e
    invoke-static {p3, v3}, Lcom/byazt/z/tt;->c(Lorg/json/JSONObject;Lcom/byazt/k/c;)Lcom/byazt/z/c;

    move-result-object p4

    .line 48
    iget v3, p4, Lcom/byazt/z/c;->tt:I

    if-eqz v3, :cond_14

    :goto_6
    move-object v1, p4

    goto :goto_7

    .line 49
    :cond_14
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_15

    const-string p4, "file_content_uri"

    invoke-virtual {p1, p4}, Lcom/byazt/t/DownloadInfo;->getDBJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_15

    const/16 p0, 0xa

    .line 50
    invoke-virtual {p1, p0}, Lcom/byazt/t/DownloadInfo;->getAntiHijackErrorCode(I)I

    move-result p0

    iput p0, v1, Lcom/byazt/z/c;->tt:I

    goto :goto_7

    .line 51
    :cond_15
    invoke-static {p0, p1, p3, v1}, Lcom/byazt/z/tt;->c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;Lcom/byazt/z/c;)Z

    move-result p0

    goto/16 :goto_2

    :cond_16
    :goto_7
    if-eqz v0, :cond_17

    .line 52
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    const-string p3, "ah_attempt"

    invoke-virtual {v1}, Lcom/byazt/z/c;->c()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_17
    sget-object p0, Lcom/byazt/z/tt;->tt:Lcom/byazt/z/tt$ve;

    if-eqz p0, :cond_18

    .line 54
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTempCacheData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    const-string p3, "intent"

    invoke-virtual {p0, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object p0, Lcom/byazt/z/tt;->tt:Lcom/byazt/z/tt$ve;

    invoke-interface {p0, p1, v1}, Lcom/byazt/z/tt$ve;->c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/z/c;)V

    :cond_18
    :goto_8
    return v0

    :pswitch_data_0
    .packed-switch -0x3ac18f35
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Landroid/content/Intent;Z)Z
    .locals 6

    .line 4
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "ah_plans"

    invoke-virtual {v0, v1}, Lcom/byazt/k/c;->n(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 6
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 7
    invoke-static {v4}, Lcom/byazt/i/c;->c(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0, p1, p2, v4, p3}, Lcom/byazt/z/tt;->c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Landroid/content/Intent;Lorg/json/JSONObject;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private static c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;Lcom/byazt/z/c;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v1, "device_plans"

    .line 66
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    iput-object v1, p3, Lcom/byazt/z/c;->n:Ljava/lang/String;

    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, ","

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    .line 72
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    .line 75
    invoke-static {p0, v6, p2, p1}, Lcom/byazt/a/uj;->c(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/t/DownloadInfo;)Lcom/byazt/a/c;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 76
    invoke-interface {v7}, Lcom/byazt/a/n;->tt()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 77
    invoke-static {v3, p1, p2}, Lcom/byazt/z/tt;->c(Ljava/io/File;Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    .line 78
    :try_start_0
    invoke-static {p0, v7, v0}, Lcom/byazt/z/tt;->c(Landroid/content/Context;Landroid/content/Intent;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    .line 79
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " startActivity failed : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/byazt/z/tt;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {p3, v8}, Lcom/byazt/z/tt;->c(Lcom/byazt/z/c;I)V

    goto :goto_1

    :cond_2
    const/4 v7, 0x6

    .line 81
    invoke-static {p3, v7}, Lcom/byazt/z/tt;->c(Lcom/byazt/z/c;I)V

    .line 82
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " createDescFile failed! "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/4 v7, 0x3

    .line 83
    invoke-static {p3, v7}, Lcom/byazt/z/tt;->c(Lcom/byazt/z/c;I)V

    .line 84
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " resolveActivity failed! "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    const-string v6, "  "

    .line 85
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_6

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/byazt/z/c;->ve:Ljava/lang/String;

    goto :goto_3

    .line 87
    :cond_6
    iput-object v6, p3, Lcom/byazt/z/c;->uj:Ljava/lang/String;

    .line 88
    iput v0, p3, Lcom/byazt/z/c;->tt:I

    :goto_3
    return v8

    :cond_7
    :goto_4
    return v0
.end method

.method private static c(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;Lcom/byazt/z/c;Lcom/byazt/k/c;)Z
    .locals 2
    .param p1    # Lcom/byazt/t/DownloadInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/byazt/z/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p4, "type"

    .line 56
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 57
    iput-object p4, p3, Lcom/byazt/z/c;->c:Ljava/lang/String;

    const-string v0, "vbi"

    .line 58
    invoke-static {p0, v0, p2, p1}, Lcom/byazt/a/uj;->c(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/t/DownloadInfo;)Lcom/byazt/a/c;

    move-result-object p1

    .line 59
    invoke-interface {p1}, Lcom/byazt/a/n;->tt()Landroid/content/Intent;

    move-result-object p1

    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 61
    :try_start_0
    invoke-static {p0, p1}, Lcom/byazt/z/tt;->tt(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 62
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " startActivity failed : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/byazt/z/tt;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {p3, v1}, Lcom/byazt/z/tt;->c(Lcom/byazt/z/c;I)V

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/byazt/z/c;->ve:Ljava/lang/String;

    goto :goto_1

    .line 65
    :cond_0
    iput v0, p3, Lcom/byazt/z/c;->tt:I

    :goto_1
    return v1
.end method

.method private static c(Ljava/io/File;Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;)Z
    .locals 2
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return p2

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 135
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object p1

    const-string v0, "download_dir"

    invoke-virtual {p1, v0}, Lcom/byazt/k/c;->uj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "ins_desc"

    .line 136
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 137
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 139
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 140
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    return p2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private static n(Landroid/content/Context;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/b;->a(Landroid/content/pm/PackageManager;)Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return p0

    .line 14
    :catchall_0
    return v0
.end method

.method public static tt(Lorg/json/JSONObject;Lcom/byazt/k/c;)Lcom/byazt/z/c;
    .locals 3

    .line 15
    new-instance v0, Lcom/byazt/z/c;

    invoke-direct {v0}, Lcom/byazt/z/c;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "type"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    iput-object v1, v0, Lcom/byazt/z/c;->c:Ljava/lang/String;

    const-string v1, "vbi"

    .line 18
    iput-object v1, v0, Lcom/byazt/z/c;->n:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, p0, p1}, Lcom/byazt/a/uj;->c(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/k/c;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 20
    iput p0, v0, Lcom/byazt/z/c;->tt:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    .line 21
    invoke-static {v0, p0}, Lcom/byazt/z/tt;->c(Lcom/byazt/z/c;I)V

    :goto_0
    return-object v0
.end method

.method public static tt(ILorg/json/JSONObject;)V
    .locals 3

    const-string v0, "show_unknown_source_on_startup"

    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "scene"

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    .line 24
    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 25
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 26
    :goto_2
    invoke-static {}, Lcom/byazt/zz/ve;->bm()Lcom/byazt/zl/ve;

    move-result-object p1

    const-string v0, "guide_auth_dialog_cancel"

    invoke-interface {p1, p0, v0, v1}, Lcom/byazt/zl/ve;->tt(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static tt(IZZ)V
    .locals 4

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "scene"

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 28
    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "result_code"

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    .line 29
    :goto_1
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 30
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 31
    :goto_2
    invoke-static {}, Lcom/byazt/zz/ve;->bm()Lcom/byazt/zl/ve;

    move-result-object p1

    const-string p2, "guide_auth_result"

    invoke-interface {p1, p0, p2, v0}, Lcom/byazt/zl/ve;->tt(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic tt(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/z/tt;->uj(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static tt(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 32
    invoke-static {p0, p1, v0}, Lcom/byazt/z/tt;->c(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result p0

    return p0
.end method

.method private static tt(Landroid/content/Context;Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;Lcom/byazt/z/c;)Z
    .locals 4
    .param p1    # Lcom/byazt/t/DownloadInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/byazt/z/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    const-string v2, "custom"

    .line 4
    iput-object v2, p3, Lcom/byazt/z/c;->uj:Ljava/lang/String;

    .line 5
    invoke-static {p0, v2, p2, p1}, Lcom/byazt/a/uj;->c(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/t/DownloadInfo;)Lcom/byazt/a/c;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 6
    invoke-virtual {v2}, Lcom/byazt/a/c;->c()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {v2}, Lcom/byazt/a/n;->tt()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_3

    return v0

    .line 8
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {v3, p1, p2}, Lcom/byazt/z/tt;->c(Ljava/io/File;Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    invoke-static {p0, v2}, Lcom/byazt/z/tt;->tt(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_4

    .line 11
    iput v0, p3, Lcom/byazt/z/c;->tt:I

    return p1

    .line 12
    :cond_4
    iput p1, p3, Lcom/byazt/z/c;->tt:I

    goto :goto_0

    :cond_5
    const/4 p0, 0x6

    .line 13
    iput p0, p3, Lcom/byazt/z/c;->tt:I

    :goto_0
    return v0

    :cond_6
    :goto_1
    const/4 p0, 0x3

    .line 14
    iput p0, p3, Lcom/byazt/z/c;->tt:I

    :cond_7
    :goto_2
    return v0
.end method

.method private static uj(ILorg/json/JSONObject;)V
    .locals 3

    const-string v0, "show_unknown_source_on_startup"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "scene"

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    .line 4
    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 6
    :goto_2
    invoke-static {}, Lcom/byazt/zz/ve;->bm()Lcom/byazt/zl/ve;

    move-result-object p1

    const-string v0, "guide_auth_dialog_show"

    invoke-interface {p1, p0, v0, v1}, Lcom/byazt/zl/ve;->tt(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static uj(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "install_non_market_apps"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    return v0
.end method

.method public static ve(ILorg/json/JSONObject;)V
    .locals 3

    const-string v0, "show_unknown_source_on_startup"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "scene"

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    .line 4
    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 6
    :goto_2
    invoke-static {}, Lcom/byazt/zz/ve;->bm()Lcom/byazt/zl/ve;

    move-result-object p1

    const-string v0, "guide_auth_open_setting"

    invoke-interface {p1, p0, v0, v1}, Lcom/byazt/zl/ve;->tt(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic ve(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/z/tt;->n(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
