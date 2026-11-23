.class public Lcom/byazt/dk/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0x42
    }
.end annotation


# direct methods
.method public static c(Landroid/app/Activity;[Ljava/lang/String;Lcom/byazt/dk/a;)V
    .locals 9

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 1
    array-length v3, p1

    if-lez v3, :cond_2

    .line 2
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    .line 3
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 4
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/omf/x;->my()Lcom/byazt/dj/uj;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {v3}, Lcom/byazt/dj/uj;->isCanUseWriteExternal()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6
    invoke-interface {p2, v0}, Lcom/byazt/dk/a;->c(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_4

    .line 8
    invoke-static {p0}, Lcom/byazt/fh/c;->c(Landroid/content/Context;)I

    move-result v3

    if-ge v3, v4, :cond_4

    if-eqz p2, :cond_3

    .line 9
    invoke-interface {p2}, Lcom/byazt/dk/a;->c()V

    :cond_3
    return-void

    :cond_4
    if-eqz p1, :cond_a

    .line 10
    array-length v3, p1

    if-gtz v3, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    .line 12
    array-length v5, p1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_6

    aget-object v7, p1, v6

    .line 13
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 14
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x21

    if-lt p0, v5, :cond_9

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v5, :cond_9

    .line 15
    array-length p0, p1

    if-ne p0, v1, :cond_9

    .line 16
    aget-object p0, p1, v2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 17
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    if-eqz p2, :cond_8

    .line 18
    invoke-interface {p2, p0}, Lcom/byazt/dk/a;->c(Ljava/lang/String;)V

    .line 19
    :cond_8
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/byazt/ukr/yp;->c(Z[Ljava/lang/String;)V

    return-void

    .line 20
    :cond_9
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/byazt/dk/t$1;

    invoke-direct {v0, p2, p1}, Lcom/byazt/dk/t$1;-><init>(Lcom/byazt/dk/a;[Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/byazt/aas/a;->c(Ljava/lang/String;[Ljava/lang/String;Lcom/byazt/aas/a$c;)V

    return-void

    :cond_a
    :goto_3
    if-eqz p2, :cond_b

    .line 21
    invoke-interface {p2}, Lcom/byazt/dk/a;->c()V

    :cond_b
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nu()Lcom/byazt/dj/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isCanUseWriteExternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    .line 25
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 26
    :cond_1
    invoke-static {}, Lcom/byazt/xgx/n;->c()Lcom/byazt/xgx/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/byazt/xgx/n;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
