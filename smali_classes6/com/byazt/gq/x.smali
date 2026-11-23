.class public Lcom/byazt/gq/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hu/yp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x47
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/gq/x$tt;,
        Lcom/byazt/gq/x$c;
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/nn/n;

.field public n:Lcom/byazt/gq/x$tt;

.field public tt:J

.field public uj:Lcom/byazt/gq/n;

.field public ve:Z


# direct methods
.method public constructor <init>(Lcom/byazt/gq/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/gq/x;->ve:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/gq/x;->uj:Lcom/byazt/gq/n;

    .line 8
    .line 9
    return-void
.end method

.method private a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-static {v0}, Lcom/byazt/hu/u;->c(Lcom/byazt/su/DownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    invoke-interface {v0}, Lcom/byazt/su/DownloadController;->getLinkMode()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/gq/i;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private a(Lcom/byazt/t/DownloadInfo;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/w/a;->uj(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic c(Lcom/byazt/gq/x;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byazt/gq/x;->tt:J

    return-wide v0
.end method

.method private c(Ljava/lang/String;)Lcom/byazt/t/ve;
    .locals 2

    const-string v0, "clickid"

    .line 218
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    new-instance v1, Lcom/byazt/t/ve;

    invoke-direct {v1, v0, p1}, Lcom/byazt/t/ve;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 222
    invoke-static {}, Lcom/byazt/gq/t;->gt()Lcom/byazt/pd/c;

    move-result-object v0

    const-string v1, "parseLogExtra Error"

    invoke-interface {v0, p1, v1}, Lcom/byazt/pd/c;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lcom/byazt/k/c;)Ljava/lang/String;
    .locals 8

    .line 143
    iget-object v0, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object p1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p1, p1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 145
    :cond_0
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v0

    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v2, v2, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v2}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/byazt/z/uj;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/t/DownloadInfo;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/byazt/hu/u;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 147
    invoke-static {v1}, Lcom/byazt/hu/da;->tt(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_1
    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    .line 148
    invoke-static {v1}, Lcom/byazt/hu/da;->tt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    .line 149
    invoke-static {v1}, Lcom/byazt/hu/da;->tt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {v1}, Lcom/byazt/hu/da;->tt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 150
    :goto_1
    invoke-virtual {p0}, Lcom/byazt/gq/x;->tt()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_7

    .line 151
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 152
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_4

    return-object v4

    .line 153
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    return-object v4

    .line 154
    :cond_5
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_6

    return-object v4

    :catch_0
    move-exception v4

    .line 155
    invoke-static {v4}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 156
    :cond_6
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v4

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/byazt/zz/Downloader;->cancel(I)V

    .line 157
    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x2

    :try_start_1
    const-string v5, "ttdownloader_code"

    if-eqz v1, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x2

    .line 158
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    .line 159
    invoke-static {v5}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 160
    :goto_3
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v5

    const-string v6, "label_external_permission"

    iget-object v7, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    invoke-virtual {v5, v6, v0, v7}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    .line 161
    :try_start_2
    invoke-static {}, Lcom/byazt/z/ve;->tt()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    const/4 v0, 0x0

    .line 162
    :goto_4
    invoke-static {p1}, Lcom/byazt/hu/n;->c(Lcom/byazt/k/c;)I

    move-result p1

    if-eqz p1, :cond_d

    const/4 v5, 0x4

    if-eq p1, v5, :cond_b

    if-nez v1, :cond_9

    if-ne p1, v4, :cond_9

    goto :goto_5

    :cond_9
    const/4 v4, 0x3

    if-eq p1, v4, :cond_a

    if-nez v1, :cond_d

    if-ne p1, v2, :cond_d

    .line 163
    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_6

    .line 164
    :cond_b
    :goto_5
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    .line 166
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 167
    :cond_c
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 168
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto :goto_6

    :cond_d
    move-object v3, v0

    :goto_6
    return-object v3
.end method

.method public static c(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/byazt/su/DownloadStatusChangeListener;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4

    .line 210
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 212
    instance-of v2, v1, Lcom/byazt/su/DownloadStatusChangeListener;

    if-eqz v2, :cond_2

    .line 213
    check-cast v1, Lcom/byazt/su/DownloadStatusChangeListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_2
    instance-of v2, v1, Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/byazt/su/DownloadStatusChangeListener;

    if-eqz v3, :cond_3

    .line 215
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/su/DownloadStatusChangeListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_3
    instance-of v2, v1, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/byazt/su/DownloadStatusChangeListener;

    if-eqz v2, :cond_1

    .line 217
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/su/DownloadStatusChangeListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    invoke-interface {v0}, Lcom/byazt/su/DownloadController;->isAddToDownloadManage()Z

    move-result v0

    return v0
.end method

.method private n(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-static {v0}, Lcom/byazt/hu/u;->c(Lcom/byazt/su/DownloadModel;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/byazt/gq/x;->a(Lcom/byazt/t/DownloadInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static tt(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/byazt/su/c;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4

    .line 18
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 20
    instance-of v2, v1, Lcom/byazt/su/c;

    if-eqz v2, :cond_2

    .line 21
    check-cast v1, Lcom/byazt/su/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_2
    instance-of v2, v1, Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/byazt/su/c;

    if-eqz v3, :cond_3

    .line 23
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/su/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_3
    instance-of v2, v1, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/byazt/su/c;

    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/su/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private tt(Lcom/byazt/ou/rl;)V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 4
    invoke-static {v0}, Lcom/byazt/hu/da;->tt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/byazt/ou/rl;->c()V

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/byazt/hu/u;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 7
    invoke-static {v0}, Lcom/byazt/hu/da;->tt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    .line 8
    invoke-static {v1}, Lcom/byazt/hu/da;->tt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 9
    invoke-static {v1}, Lcom/byazt/hu/da;->tt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Lcom/byazt/ou/rl;->c()V

    :cond_3
    return-void

    :cond_4
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 11
    :cond_5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/byazt/gq/x$2;

    invoke-direct {v1, p0, p1}, Lcom/byazt/gq/x$2;-><init>(Lcom/byazt/gq/x;Lcom/byazt/ou/rl;)V

    invoke-static {v0, v1}, Lcom/byazt/hu/da;->c([Ljava/lang/String;Lcom/byazt/hu/da$c;)V

    return-void
.end method

.method private uj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 3
    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private ve()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/gq/x;->uj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/byazt/gq/x;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public c(Landroid/content/Context;Lcom/byazt/c/IDownloadListener;)I
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v1, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "enable_send_click_id_in_apk"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 72
    iget-object v3, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v3, v3, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v3}, Lcom/byazt/su/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v3, v3, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v3}, Lcom/byazt/su/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/byazt/gq/x;->c(Ljava/lang/String;)Lcom/byazt/t/ve;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 74
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v1, :cond_3

    .line 75
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_2

    .line 76
    new-instance v4, Lcom/byazt/t/ve;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v6, v3}, Lcom/byazt/t/ve;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v1, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 78
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v3, v3, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 79
    invoke-interface {v3}, Lcom/byazt/su/DownloadModel;->getNotificationJumpUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v4, v4, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 80
    invoke-interface {v4}, Lcom/byazt/su/DownloadModel;->isShowToast()Z

    move-result v4

    iget-object v6, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v6, v6, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 81
    invoke-interface {v6}, Lcom/byazt/su/DownloadModel;->getModelType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-static {v1, v3, v4, v6}, Lcom/byazt/hu/uj;->c(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    iget-object v3, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v3, v3, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-static {v3}, Lcom/byazt/hu/n;->tt(Lcom/byazt/su/DownloadModel;)Lcom/byazt/k/c;

    move-result-object v3

    .line 84
    iget-object v4, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v4, v4, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-static {v4}, Lcom/byazt/hu/n;->c(Lcom/byazt/su/DownloadModel;)Lorg/json/JSONObject;

    move-result-object v4

    .line 85
    iget-object v6, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v6, v6, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    invoke-interface {v6}, Lcom/byazt/su/DownloadController;->enableAH()Z

    move-result v6

    if-nez v6, :cond_4

    .line 86
    invoke-static {v4}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 87
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const-string v7, "ah_plans"

    invoke-static {v4, v7, v6}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :cond_4
    iget-object v6, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v6, v6, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v6}, Lcom/byazt/su/DownloadModel;->getExecutorGroup()I

    move-result v6

    .line 89
    iget-object v7, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v7, v7, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v7}, Lcom/byazt/su/DownloadModel;->isAd()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v7, v7, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-static {v7}, Lcom/byazt/gq/i;->tt(Lcom/byazt/su/DownloadModel;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    const/4 v6, 0x4

    .line 90
    :cond_6
    invoke-direct {p0, v3}, Lcom/byazt/gq/x;->c(Lcom/byazt/k/c;)Ljava/lang/String;

    move-result-object v7

    .line 91
    iget-object v8, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v8, v8, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v8}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/byazt/zz/ve;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 92
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 93
    iget-object v9, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v9, v9, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v9}, Lcom/byazt/su/DownloadModel;->getModelType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v10, v9, :cond_7

    .line 94
    invoke-virtual {v8, v5}, Lcom/byazt/t/DownloadInfo;->setFirstDownload(Z)V

    .line 95
    :cond_7
    new-instance v8, Lcom/byazt/z/n;

    iget-object v9, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v9, v9, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v9}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Lcom/byazt/z/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p1, p1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 96
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getBackupUrls()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/byazt/z/n;->tt(Ljava/util/List;)Lcom/byazt/z/n;

    move-result-object p1

    iget-object v8, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v8, v8, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 97
    invoke-interface {v8}, Lcom/byazt/su/DownloadModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/byazt/z/n;->c(Ljava/lang/String;)Lcom/byazt/z/n;

    move-result-object p1

    .line 98
    invoke-virtual {p1, v1}, Lcom/byazt/z/n;->n(Ljava/lang/String;)Lcom/byazt/z/n;

    move-result-object p1

    .line 99
    invoke-virtual {p1, v2}, Lcom/byazt/z/n;->c(Ljava/util/List;)Lcom/byazt/z/n;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v1, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 100
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->isShowNotification()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/z/n;->c(Z)Lcom/byazt/z/n;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v1, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 101
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->isNeedWifi()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/z/n;->ve(Z)Lcom/byazt/z/n;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v1, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 102
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/z/n;->tt(Ljava/lang/String;)Lcom/byazt/z/n;

    move-result-object p1

    .line 103
    invoke-virtual {p1, v7}, Lcom/byazt/z/n;->ve(Ljava/lang/String;)Lcom/byazt/z/n;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v1, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 104
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getAppIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/z/n;->sl(Ljava/lang/String;)Lcom/byazt/z/n;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v1, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 105
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/z/n;->x(Ljava/lang/String;)Lcom/byazt/z/n;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v1, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 106
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getSdkMonitorScene()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/z/n;->da(Ljava/lang/String;)Lcom/byazt/z/n;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v1, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 107
    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getExpectFileLength()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/byazt/z/n;->c(J)Lcom/byazt/z/n;

    move-result-object p1

    .line 108
    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->c(Lcom/byazt/c/IDownloadListener;)Lcom/byazt/z/n;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p2, p2, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 109
    invoke-interface {p2}, Lcom/byazt/su/DownloadModel;->needIndependentProcess()Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "need_independent_process"

    invoke-virtual {v3, p2, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_8

    goto :goto_1

    :cond_8
    const/4 p2, 0x0

    goto :goto_2

    :cond_9
    :goto_1
    const/4 p2, 0x1

    :goto_2
    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->t(Z)Lcom/byazt/z/n;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p2, p2, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 110
    invoke-interface {p2}, Lcom/byazt/su/DownloadModel;->getDownloadFileUriProvider()Lcom/byazt/c/IDownloadFileUriProvider;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->c(Lcom/byazt/c/IDownloadFileUriProvider;)Lcom/byazt/z/n;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p2, p2, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 111
    invoke-interface {p2}, Lcom/byazt/su/DownloadModel;->autoInstallWithoutNotification()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->tt(Z)Lcom/byazt/z/n;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p2, p2, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 112
    invoke-interface {p2}, Lcom/byazt/su/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->sp(Ljava/lang/String;)Lcom/byazt/z/n;

    move-result-object p1

    const/16 p2, 0x3e8

    .line 113
    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->uj(I)Lcom/byazt/z/n;

    move-result-object p1

    const/16 p2, 0x64

    .line 114
    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->n(I)Lcom/byazt/z/n;

    move-result-object p1

    .line 115
    invoke-virtual {p1, v4}, Lcom/byazt/z/n;->c(Lorg/json/JSONObject;)Lcom/byazt/z/n;

    move-result-object p1

    .line 116
    invoke-virtual {p1, v5}, Lcom/byazt/z/n;->i(Z)Lcom/byazt/z/n;

    move-result-object p1

    .line 117
    invoke-virtual {p1, v5}, Lcom/byazt/z/n;->da(Z)Lcom/byazt/z/n;

    move-result-object p1

    const-string p2, "retry_count"

    const/4 v1, 0x5

    .line 118
    invoke-virtual {v3, p2, v1}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->tt(I)Lcom/byazt/z/n;

    move-result-object p1

    const-string p2, "backup_url_retry_count"

    .line 119
    invoke-virtual {v3, p2, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->ve(I)Lcom/byazt/z/n;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v5}, Lcom/byazt/z/n;->da(Z)Lcom/byazt/z/n;

    move-result-object p1

    const-string p2, "need_head_connection"

    .line 121
    invoke-virtual {v3, p2, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_a

    const/4 p2, 0x1

    goto :goto_3

    :cond_a
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->u(Z)Lcom/byazt/z/n;

    move-result-object p1

    const-string p2, "need_https_to_http_retry"

    .line 122
    invoke-virtual {v3, p2, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_b

    const/4 p2, 0x1

    goto :goto_4

    :cond_b
    const/4 p2, 0x0

    :goto_4
    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->uj(Z)Lcom/byazt/z/n;

    move-result-object p1

    const-string p2, "need_chunk_downgrade_retry"

    .line 123
    invoke-virtual {v3, p2, v5}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_c

    const/4 p2, 0x1

    goto :goto_5

    :cond_c
    const/4 p2, 0x0

    :goto_5
    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->x(Z)Lcom/byazt/z/n;

    move-result-object p1

    const-string p2, "need_retry_delay"

    .line 124
    invoke-virtual {v3, p2, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_d

    const/4 p2, 0x1

    goto :goto_6

    :cond_d
    const/4 p2, 0x0

    :goto_6
    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->sp(Z)Lcom/byazt/z/n;

    move-result-object p1

    const-string p2, "retry_delay_time_array"

    .line 125
    invoke-virtual {v3, p2}, Lcom/byazt/k/c;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->i(Ljava/lang/String;)Lcom/byazt/z/n;

    move-result-object p1

    const-string p2, "need_reuse_runnable"

    .line 126
    invoke-virtual {v3, p2, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_e

    const/4 p2, 0x1

    goto :goto_7

    :cond_e
    const/4 p2, 0x0

    :goto_7
    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->sl(Z)Lcom/byazt/z/n;

    move-result-object p1

    .line 127
    invoke-virtual {p1, v6}, Lcom/byazt/z/n;->a(I)Lcom/byazt/z/n;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p2, p2, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 128
    invoke-interface {p2}, Lcom/byazt/su/DownloadModel;->isAutoInstall()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->m(Z)Lcom/byazt/z/n;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p2, p2, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 129
    invoke-interface {p2}, Lcom/byazt/su/DownloadModel;->distinctDir()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->z(Z)Lcom/byazt/z/n;

    move-result-object p1

    .line 130
    iget-object p2, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p2, p2, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {p2}, Lcom/byazt/su/DownloadModel;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 131
    iget-object p2, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p2, p2, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {p2}, Lcom/byazt/su/DownloadModel;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->a(Ljava/lang/String;)Lcom/byazt/z/n;

    goto :goto_8

    :cond_f
    const-string p2, "application/vnd.android.package-archive"

    .line 132
    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->a(Ljava/lang/String;)Lcom/byazt/z/n;

    :goto_8
    const-string p2, "notification_opt_2"

    .line 133
    invoke-virtual {v3, p2, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_10

    .line 134
    invoke-virtual {p1, v0}, Lcom/byazt/z/n;->c(Z)Lcom/byazt/z/n;

    .line 135
    invoke-virtual {p1, v5}, Lcom/byazt/z/n;->tt(Z)Lcom/byazt/z/n;

    :cond_10
    const-string p2, "clear_space_use_disk_handler"

    .line 136
    invoke-virtual {v3, p2, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v5, :cond_11

    .line 137
    new-instance p2, Lcom/byazt/ie/c;

    invoke-direct {p2}, Lcom/byazt/ie/c;-><init>()V

    .line 138
    invoke-virtual {p1, p2}, Lcom/byazt/z/n;->c(Lcom/byazt/c/rh;)Lcom/byazt/z/n;

    goto :goto_9

    :cond_11
    const/4 p2, 0x0

    .line 139
    :goto_9
    iget-object v0, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    instance-of v1, v0, Lcom/byazt/ar/AdDownloadModel;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/byazt/ar/AdDownloadModel;

    invoke-virtual {v0}, Lcom/byazt/ar/AdDownloadModel;->getTaskKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 140
    iget-object v0, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    check-cast v0, Lcom/byazt/ar/AdDownloadModel;

    invoke-virtual {v0}, Lcom/byazt/ar/AdDownloadModel;->getTaskKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/z/n;->uj(Ljava/lang/String;)Lcom/byazt/z/n;

    .line 141
    :cond_12
    iget-object v0, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    invoke-direct {p0}, Lcom/byazt/gq/x;->ve()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/byazt/gq/i;->c(Lcom/byazt/nn/n;ZLcom/byazt/z/n;)I

    move-result p1

    if-eqz p2, :cond_13

    .line 142
    invoke-virtual {p2, p1}, Lcom/byazt/ie/c;->c(I)V

    :cond_13
    return p1
.end method

.method public c()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/byazt/gq/x;->n:Lcom/byazt/gq/x$tt;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/byazt/gq/x$3;

    invoke-direct {v0, p0}, Lcom/byazt/gq/x$3;-><init>(Lcom/byazt/gq/x;)V

    iput-object v0, p0, Lcom/byazt/gq/x;->n:Lcom/byazt/gq/x$tt;

    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 1

    .line 3
    iput-wide p1, p0, Lcom/byazt/gq/x;->tt:J

    .line 4
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nn/a;->n(J)Lcom/byazt/nn/n;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    .line 5
    invoke-virtual {p1}, Lcom/byazt/nn/n;->gr()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    const-string p2, "setAdId ModelBox notValid"

    invoke-virtual {p1, p2}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/os/Message;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Landroid/os/Message;Lcom/byazt/e/DownloadShortInfo;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Lcom/byazt/e/DownloadShortInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_e

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 37
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/byazt/t/DownloadInfo;

    .line 38
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/4 v5, 0x6

    if-eq p1, v5, :cond_2

    if-ne p1, v2, :cond_2

    .line 39
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getIsFirstDownload()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    invoke-static {}, Lcom/byazt/di/x;->c()Lcom/byazt/di/x;

    move-result-object p1

    iget-object v5, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v6, v5, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    iget-object v7, v5, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    iget-object v5, v5, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    invoke-virtual {p1, v6, v7, v5}, Lcom/byazt/di/x;->c(Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadEventConfig;)V

    .line 41
    invoke-virtual {v0, v3}, Lcom/byazt/t/DownloadInfo;->setFirstDownload(Z)V

    .line 42
    :cond_1
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/zn/c;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 43
    :cond_2
    invoke-virtual {p2, v0}, Lcom/byazt/e/DownloadShortInfo;->updateFromNewDownloadInfo(Lcom/byazt/t/DownloadInfo;)V

    .line 44
    invoke-static {p2}, Lcom/byazt/gq/da;->c(Lcom/byazt/e/DownloadShortInfo;)Lcom/byazt/e/DownloadShortInfo;

    .line 45
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result p1

    invoke-static {p1}, Lcom/byazt/z/ve;->c(I)I

    move-result p1

    .line 46
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    .line 47
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v7

    const-wide/16 v10, 0x64

    mul-long v7, v7, v10

    div-long/2addr v7, v5

    long-to-int v3, v7

    :cond_3
    if-gtz v9, :cond_4

    .line 48
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object v5

    const-string v6, "fix_click_start"

    invoke-virtual {v5, v6}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 49
    :cond_4
    iget-object v5, p0, Lcom/byazt/gq/x;->n:Lcom/byazt/gq/x$tt;

    if-eqz v5, :cond_5

    .line 50
    invoke-interface {v5, v0}, Lcom/byazt/gq/x$tt;->c(Lcom/byazt/t/DownloadInfo;)V

    const/4 v5, 0x0

    .line 51
    iput-object v5, p0, Lcom/byazt/gq/x;->n:Lcom/byazt/gq/x$tt;

    .line 52
    :cond_5
    invoke-static {p3}, Lcom/byazt/gq/x;->c(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    .line 53
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/su/DownloadStatusChangeListener;

    if-eq p1, v4, :cond_c

    if-eq p1, v2, :cond_b

    if-eq p1, v1, :cond_7

    goto :goto_0

    .line 54
    :cond_7
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v7

    const/4 v8, -0x4

    if-ne v7, v8, :cond_8

    .line 55
    invoke-interface {v6}, Lcom/byazt/su/DownloadStatusChangeListener;->onIdle()V

    goto :goto_0

    .line 56
    :cond_8
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_9

    .line 57
    invoke-interface {v6, p2}, Lcom/byazt/su/DownloadStatusChangeListener;->onDownloadFailed(Lcom/byazt/e/DownloadShortInfo;)V

    goto :goto_0

    .line 58
    :cond_9
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v7

    const/4 v8, -0x3

    if-ne v7, v8, :cond_6

    .line 59
    iget-object v7, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v7, v7, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-static {v7}, Lcom/byazt/hu/u;->c(Lcom/byazt/su/DownloadModel;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 60
    invoke-interface {v6, p2}, Lcom/byazt/su/DownloadStatusChangeListener;->onInstalled(Lcom/byazt/e/DownloadShortInfo;)V

    goto :goto_0

    .line 61
    :cond_a
    invoke-interface {v6, p2}, Lcom/byazt/su/DownloadStatusChangeListener;->onDownloadFinished(Lcom/byazt/e/DownloadShortInfo;)V

    goto :goto_0

    .line 62
    :cond_b
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v7

    invoke-static {v7, v3}, Lcom/byazt/gq/da;->c(II)I

    move-result v7

    invoke-interface {v6, p2, v7}, Lcom/byazt/su/DownloadStatusChangeListener;->onDownloadPaused(Lcom/byazt/e/DownloadShortInfo;I)V

    goto :goto_0

    .line 63
    :cond_c
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v7

    const/16 v8, 0xb

    if-eq v7, v8, :cond_d

    .line 64
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v7

    invoke-static {v7, v3}, Lcom/byazt/gq/da;->c(II)I

    move-result v7

    invoke-interface {v6, p2, v7}, Lcom/byazt/su/DownloadStatusChangeListener;->onDownloadActive(Lcom/byazt/e/DownloadShortInfo;I)V

    goto :goto_0

    .line 65
    :cond_d
    invoke-static {p3}, Lcom/byazt/gq/x;->tt(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    .line 66
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_e
    :goto_2
    return-void
.end method

.method public c(Lcom/byazt/ou/rl;)V
    .locals 4
    .param p1    # Lcom/byazt/ou/rl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "/cache"

    .line 26
    iget-object v1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v1, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 27
    iget-object v1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v1, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v1}, Lcom/byazt/su/DownloadModel;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    invoke-interface {p1}, Lcom/byazt/ou/rl;->c()V

    return-void

    .line 30
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 33
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-interface {p1}, Lcom/byazt/ou/rl;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 35
    :catch_0
    :cond_2
    new-instance v0, Lcom/byazt/gq/x$1;

    invoke-direct {v0, p0, p1}, Lcom/byazt/gq/x$1;-><init>(Lcom/byazt/gq/x;Lcom/byazt/ou/rl;)V

    invoke-direct {p0, v0}, Lcom/byazt/gq/x;->tt(Lcom/byazt/ou/rl;)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/byazt/gq/x;->ve:Z

    .line 8
    invoke-virtual {p0, p1}, Lcom/byazt/gq/x;->tt(Lcom/byazt/t/DownloadInfo;)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/e/DownloadShortInfo;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/t/DownloadInfo;",
            "Lcom/byazt/e/DownloadShortInfo;",
            "Ljava/util/List<",
            "Lcom/byazt/su/DownloadStatusChangeListener;",
            ">;Z)V"
        }
    .end annotation

    .line 188
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_8

    if-nez p2, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x0

    .line 189
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 190
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    div-long/2addr v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 191
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 192
    :goto_1
    invoke-virtual {p2, p1}, Lcom/byazt/e/DownloadShortInfo;->updateFromNewDownloadInfo(Lcom/byazt/t/DownloadInfo;)V

    .line 193
    invoke-static {p2}, Lcom/byazt/gq/da;->c(Lcom/byazt/e/DownloadShortInfo;)Lcom/byazt/e/DownloadShortInfo;

    .line 194
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/su/DownloadStatusChangeListener;

    .line 195
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 196
    :pswitch_1
    instance-of v2, v1, Lcom/byazt/su/c;

    if-nez v2, :cond_4

    .line 197
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2, v0}, Lcom/byazt/gq/da;->c(II)I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/byazt/su/DownloadStatusChangeListener;->onDownloadActive(Lcom/byazt/e/DownloadShortInfo;I)V

    goto :goto_2

    .line 198
    :pswitch_2
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2, v0}, Lcom/byazt/gq/da;->c(II)I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/byazt/su/DownloadStatusChangeListener;->onDownloadActive(Lcom/byazt/e/DownloadShortInfo;I)V

    goto :goto_2

    .line 199
    :pswitch_3
    invoke-interface {v1, p2}, Lcom/byazt/su/DownloadStatusChangeListener;->onDownloadFailed(Lcom/byazt/e/DownloadShortInfo;)V

    goto :goto_2

    .line 200
    :pswitch_4
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2, v0}, Lcom/byazt/gq/da;->c(II)I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/byazt/su/DownloadStatusChangeListener;->onDownloadPaused(Lcom/byazt/e/DownloadShortInfo;I)V

    goto :goto_2

    :pswitch_5
    if-eqz p4, :cond_5

    .line 201
    invoke-interface {v1, p2}, Lcom/byazt/su/DownloadStatusChangeListener;->onInstalled(Lcom/byazt/e/DownloadShortInfo;)V

    goto :goto_2

    .line 202
    :cond_5
    invoke-interface {v1, p2}, Lcom/byazt/su/DownloadStatusChangeListener;->onDownloadFinished(Lcom/byazt/e/DownloadShortInfo;)V

    goto :goto_2

    .line 203
    :pswitch_6
    iget-object v2, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v2, v2, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-static {v2}, Lcom/byazt/hu/u;->c(Lcom/byazt/su/DownloadModel;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x3

    .line 204
    iput v2, p2, Lcom/byazt/e/DownloadShortInfo;->status:I

    .line 205
    invoke-interface {v1, p2}, Lcom/byazt/su/DownloadStatusChangeListener;->onInstalled(Lcom/byazt/e/DownloadShortInfo;)V

    goto :goto_2

    .line 206
    :cond_6
    invoke-interface {v1}, Lcom/byazt/su/DownloadStatusChangeListener;->onIdle()V

    goto :goto_2

    :cond_7
    return-void

    .line 207
    :cond_8
    :goto_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/su/DownloadStatusChangeListener;

    .line 208
    invoke-interface {p2}, Lcom/byazt/su/DownloadStatusChangeListener;->onIdle()V

    goto :goto_4

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c(Lcom/byazt/t/DownloadInfo;Z)V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v1, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-static {v1}, Lcom/byazt/gq/i;->c(Lcom/byazt/su/DownloadModel;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_4

    .line 172
    invoke-static {}, Lcom/byazt/zn/ve;->c()Lcom/byazt/zn/ve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/zn/ve;->ve()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x3

    if-ne v0, v1, :cond_4

    .line 173
    :cond_2
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v1

    iget-wide v3, p0, Lcom/byazt/gq/x;->tt:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/byazt/zn/c;->c(JI)V

    goto :goto_1

    .line 174
    :cond_3
    :goto_0
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v1

    iget-wide v3, p0, Lcom/byazt/gq/x;->tt:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/byazt/zn/c;->c(JI)V

    :cond_4
    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 175
    :pswitch_1
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p2

    iget-wide v0, p0, Lcom/byazt/gq/x;->tt:J

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/byazt/zn/c;->c(JILcom/byazt/t/DownloadInfo;)V

    return-void

    .line 176
    :pswitch_2
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    iget-wide v3, p0, Lcom/byazt/gq/x;->tt:J

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v4, v1, p1}, Lcom/byazt/zn/c;->c(JILcom/byazt/t/DownloadInfo;)V

    if-eqz p2, :cond_6

    .line 177
    invoke-static {}, Lcom/byazt/zn/ve;->c()Lcom/byazt/zn/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/zn/ve;->tt()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 178
    invoke-static {}, Lcom/byazt/zn/ve;->c()Lcom/byazt/zn/ve;

    move-result-object p1

    iget-wide v0, p0, Lcom/byazt/gq/x;->tt:J

    iget-object p2, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p2, p2, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {p2}, Lcom/byazt/su/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/byazt/zn/ve;->tt(JLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 179
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p1

    iget-wide v0, p0, Lcom/byazt/gq/x;->tt:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/zn/c;->c(JI)V

    return-void

    .line 180
    :pswitch_3
    iget-object v0, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-static {v0}, Lcom/byazt/hu/u;->c(Lcom/byazt/su/DownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    const-string p2, "SUCCESSED isInstalledApp"

    invoke-virtual {p1, p2}, Lcom/byazt/dm/ve;->tt(Ljava/lang/String;)V

    return-void

    .line 182
    :cond_5
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    iget-wide v3, p0, Lcom/byazt/gq/x;->tt:J

    const/4 v1, 0x5

    invoke-virtual {v0, v3, v4, v1, p1}, Lcom/byazt/zn/c;->c(JILcom/byazt/t/DownloadInfo;)V

    if-eqz p2, :cond_6

    .line 183
    invoke-static {}, Lcom/byazt/zn/ve;->c()Lcom/byazt/zn/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/zn/ve;->tt()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 184
    invoke-static {}, Lcom/byazt/zn/ve;->c()Lcom/byazt/zn/ve;

    move-result-object p1

    iget-wide v0, p0, Lcom/byazt/gq/x;->tt:J

    iget-object p2, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p2, p2, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {p2}, Lcom/byazt/su/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/byazt/zn/ve;->tt(JLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 185
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p1

    iget-wide v0, p0, Lcom/byazt/gq/x;->tt:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/zn/c;->c(JI)V

    goto :goto_2

    .line 186
    :pswitch_4
    invoke-virtual {p0}, Lcom/byazt/gq/x;->c()V

    .line 187
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object p2

    new-instance v0, Lcom/byazt/dd/tt;

    iget-object v1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v2, v1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    iget-object v3, v1, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    iget-object v1, v1, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p1

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/byazt/dd/tt;-><init>(Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;I)V

    invoke-virtual {p2, v0}, Lcom/byazt/nn/a;->c(Lcom/byazt/dd/tt;)V

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public c(I)Z
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    invoke-interface {v0}, Lcom/byazt/su/DownloadController;->getDownloadMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    return v1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    invoke-interface {v0}, Lcom/byazt/su/DownloadController;->getDownloadMode()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    if-ne p1, v1, :cond_1

    .line 23
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "disable_lp_if_market"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    return v3
.end method

.method public c(ILcom/byazt/su/DownloadModel;)Z
    .locals 1

    .line 24
    invoke-static {}, Lcom/byazt/i/n;->ve()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/byazt/gq/x;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/byazt/hu/u;->c(Lcom/byazt/su/DownloadModel;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/content/Context;IZ)Z
    .locals 3

    .line 9
    iget-object p1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p1, p1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-static {p1}, Lcom/byazt/hu/u;->c(Lcom/byazt/su/DownloadModel;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-wide p2, p2, Lcom/byazt/nn/n;->c:J

    invoke-virtual {p1, p2, p3}, Lcom/byazt/nn/a;->uj(J)Lcom/byazt/dd/tt;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/dd/tt;->my()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/byazt/n/tt;->a(I)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    invoke-static {p1}, Lcom/byazt/us/c;->c(Lcom/byazt/nn/n;)Z

    move-result p1

    return p1

    .line 13
    :cond_1
    invoke-virtual {p0, p2}, Lcom/byazt/gq/x;->c(I)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p1, p1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    .line 14
    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "disable_market"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    invoke-static {p1, p2}, Lcom/byazt/us/c;->c(Lcom/byazt/nn/n;I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/byazt/gq/x;->uj:Lcom/byazt/gq/n;

    invoke-virtual {p1}, Lcom/byazt/gq/n;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/gq/x;->uj:Lcom/byazt/gq/n;

    invoke-virtual {p1, v1}, Lcom/byazt/gq/n;->uj(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    if-eqz p3, :cond_5

    .line 18
    iget-object p1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p1, p1, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->getDownloadMode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/byazt/gq/x;->uj:Lcom/byazt/gq/n;

    .line 19
    invoke-virtual {p1}, Lcom/byazt/gq/n;->n()Z

    move-result p1

    if-nez p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/byazt/gq/x;->uj:Lcom/byazt/gq/n;

    invoke-virtual {p1, v1}, Lcom/byazt/gq/n;->ve(Z)V

    return v1

    :cond_5
    return v0
.end method

.method public c(Z)Z
    .locals 1

    if-nez p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object p1, p1, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    invoke-interface {p1}, Lcom/byazt/su/DownloadController;->getDownloadMode()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public tt()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public tt(Lcom/byazt/t/DownloadInfo;)V
    .locals 1
    .param p1    # Lcom/byazt/t/DownloadInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/byazt/gq/x;->n:Lcom/byazt/gq/x$tt;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/gq/x$tt;->c(Lcom/byazt/t/DownloadInfo;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/byazt/gq/x;->n:Lcom/byazt/gq/x$tt;

    :cond_0
    return-void
.end method

.method public uj(Lcom/byazt/t/DownloadInfo;)Z
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/byazt/gq/x;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/byazt/gq/x;->n(Lcom/byazt/t/DownloadInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public ve(Lcom/byazt/t/DownloadInfo;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-static {v0}, Lcom/byazt/gq/i;->c(Lcom/byazt/su/DownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/byazt/gq/x;->ve:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/hu/u;->tt(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 5
    :goto_0
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v1

    const-string v2, "file_status"

    iget-object v3, p0, Lcom/byazt/gq/x;->c:Lcom/byazt/nn/n;

    invoke-virtual {v1, v2, p1, v3}, Lcom/byazt/zn/c;->c(Ljava/lang/String;ILcom/byazt/nn/n;)V

    .line 6
    iput-boolean v0, p0, Lcom/byazt/gq/x;->ve:Z

    :cond_1
    return-void
.end method
