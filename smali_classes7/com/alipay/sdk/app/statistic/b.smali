.class final Lcom/alipay/sdk/app/statistic/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/app/statistic/b;->b:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/alipay/sdk/app/statistic/b;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const-string v0, "alipay_cashier_statistic_record"

    .line 2
    .line 3
    new-instance v1, Lcom/alipay/sdk/packet/impl/c;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/alipay/sdk/packet/impl/c;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/alipay/sdk/app/statistic/b;->b:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v2, v0}, Lcom/alipay/sdk/util/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    iget-object v3, p0, Lcom/alipay/sdk/app/statistic/b;->b:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1, v3, v2}, Lcom/alipay/sdk/packet/impl/c;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/alipay/sdk/app/statistic/b;->b:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :catchall_0
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/alipay/sdk/app/statistic/b;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    iget-object v2, p0, Lcom/alipay/sdk/app/statistic/b;->b:Landroid/content/Context;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/alipay/sdk/app/statistic/b;->c:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/alipay/sdk/packet/impl/c;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .line 59
    .line 60
    :catchall_1
    :cond_1
    return-void

    .line 61
    :catch_0
    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/b;->b:Landroid/content/Context;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/alipay/sdk/app/statistic/b;->c:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/util/i;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
