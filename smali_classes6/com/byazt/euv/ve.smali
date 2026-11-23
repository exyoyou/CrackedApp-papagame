.class public Lcom/byazt/euv/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x172,
        0x36
    }
.end annotation


# direct methods
.method private static c()Ljava/lang/Class;
    .locals 7

    .line 72
    const-class v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 73
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 74
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TranslucentConversionListener"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static c(Landroid/app/Activity;)V
    .locals 8

    .line 75
    const-class v0, Landroid/app/Activity;

    :try_start_0
    const-string v1, "getActivityOptions"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lcom/bytedance/pangle/util/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "convertToTranslucent"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 76
    invoke-static {}, Lcom/byazt/euv/ve;->c()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v2

    const-class v6, Landroid/app/ActivityOptions;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v0, v3, v5}, Lcom/bytedance/pangle/util/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    aput-object v1, v3, v7

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static c(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "mListenerInfo"

    .line 62
    invoke-static {p1, v0}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "mOnClickListener"

    .line 63
    invoke-static {v0, v1}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 65
    const-class v2, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    :cond_1
    new-instance v1, Lcom/byazt/euv/c;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "mMethodName"

    invoke-static {v0, v3}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lcom/byazt/euv/c;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkOnClickListener failed!"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Zeus/activity_pangle"

    invoke-static {v2, v1}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v0}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V

    .line 69
    :cond_2
    :goto_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 70
    :goto_1
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 71
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/byazt/euv/ve;->c(Landroid/app/Activity;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static c(Lcom/byazt/euv/tt;Landroid/content/Context;)V
    .locals 3

    .line 52
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->hasInit()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Zeus/init_pangle"

    const-string v1, "ProxyActivityUtils.attachBaseContext. AppApplication == null."

    .line 53
    invoke-static {v0, v1}, Lcom/byazt/bog/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-interface {p0, p1}, Lcom/byazt/euv/tt;->zeusSuperAttachBaseContext(Landroid/content/Context;)V

    return-void

    .line 55
    :cond_0
    invoke-interface {p0}, Lcom/byazt/euv/tt;->getPluginPkgName()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/pangle/plugin/PluginManager;->loadPlugin(Ljava/lang/String;)Z

    move-result v1

    .line 57
    :try_start_0
    invoke-static {}, Lcom/bytedance/pangle/plugin/PluginManager;->getInstance()Lcom/bytedance/pangle/plugin/PluginManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/pangle/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/byazt/euv/tt;->setPlugin(Lcom/bytedance/pangle/plugin/Plugin;)V

    if-eqz v1, :cond_1

    .line 58
    invoke-static {p1, v0}, Lcom/bytedance/pangle/transform/ZeusTransformUtils;->wrapperContext(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/byazt/euv/tt;->zeusSuperAttachBaseContext(Landroid/content/Context;)V

    const-string p1, "mResources"

    const/4 v0, 0x0

    .line 59
    invoke-static {p0, p1, v0}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 60
    :cond_1
    invoke-interface {p0, p1}, Lcom/byazt/euv/tt;->zeusSuperAttachBaseContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 61
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static c(Lcom/byazt/euv/tt;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->hasInit()Z

    move-result v0

    const-string v1, "Zeus/init_pangle"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "ProxyActivityUtils.onCreate finish. AppApplication == null."

    .line 2
    invoke-static {v1, p1}, Lcom/byazt/bog/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p0, v2}, Lcom/byazt/euv/tt;->zeusSuperOnCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-interface {p0}, Lcom/byazt/euv/tt;->finish()V

    return-void

    .line 5
    :cond_0
    invoke-interface {p0}, Lcom/byazt/euv/tt;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 6
    invoke-interface {p0}, Lcom/byazt/euv/tt;->getPluginPkgName()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {p0}, Lcom/byazt/euv/tt;->getPlugin()Lcom/bytedance/pangle/plugin/Plugin;

    move-result-object v4

    if-nez v4, :cond_1

    const-string p1, "ProxyActivityUtils.onCreate finish. plugin == null"

    .line 8
    invoke-static {v1, p1}, Lcom/byazt/bog/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {p0, v2}, Lcom/byazt/euv/tt;->zeusSuperOnCreate(Landroid/os/Bundle;)V

    .line 10
    invoke-interface {p0}, Lcom/byazt/euv/tt;->finish()V

    return-void

    .line 11
    :cond_1
    iget-object v1, v4, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 12
    invoke-static {v0}, Lcom/byazt/euv/IntentUtils;->c(Landroid/content/Intent;)V

    const-string v1, "targetPlugin"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 15
    sget-object v6, Lcom/bytedance/pangle/ComponentManager;->stubActivity2TargetActivities:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_2

    .line 16
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 17
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    :cond_2
    invoke-virtual {v4}, Lcom/bytedance/pangle/plugin/Plugin;->isLoaded()Z

    move-result v0

    const-string v1, "Zeus/activity_pangle"

    if-eqz v0, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    .line 20
    :cond_3
    iget-object v0, v4, Lcom/bytedance/pangle/plugin/Plugin;->pluginActivities:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_4

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Have you declared "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in plugin\'s AndroidManifest.xml!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-interface {p0, v2}, Lcom/byazt/euv/tt;->zeusSuperOnCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-interface {p0}, Lcom/byazt/euv/tt;->finish()V

    const-string p0, "activityInfo null"

    .line 24
    invoke-static {v5, p0, v4}, Lcom/byazt/euv/ve;->c(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/pangle/plugin/Plugin;)V

    return-void

    .line 25
    :cond_4
    :try_start_0
    iget-object v1, v4, Lcom/bytedance/pangle/plugin/Plugin;->mClassLoader:Lcom/bytedance/pangle/PluginClassLoader;

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/pangle/activity/IPluginActivity;

    const-string v2, "mApplication"

    .line 26
    invoke-interface {p0}, Lcom/byazt/euv/tt;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-interface {p0, v1}, Lcom/byazt/euv/tt;->setTargetActivity(Lcom/bytedance/pangle/activity/IPluginActivity;)V

    .line 28
    invoke-interface {v1, p0, v4}, Lcom/bytedance/pangle/activity/IPluginActivity;->setPluginProxyActivity(Lcom/byazt/euv/tt;Lcom/bytedance/pangle/plugin/Plugin;)V

    .line 29
    iget v2, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 30
    invoke-interface {p0, v2}, Lcom/byazt/euv/tt;->zeusSuperSetTheme(I)V

    .line 31
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010058

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 32
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    invoke-virtual {v2, v3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 33
    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/byazt/euv/ve;->c(Landroid/app/Activity;)V

    .line 34
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-interface {p0}, Lcom/byazt/euv/tt;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/pangle/activity/IPluginActivity;->attachBaseContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq v2, v0, :cond_6

    .line 37
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    :catch_0
    :cond_6
    :try_start_2
    invoke-interface {v1, p1}, Lcom/bytedance/pangle/activity/IPluginActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 39
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0, v4}, Lcom/byazt/euv/ve;->c(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/pangle/plugin/Plugin;)V

    return-void

    .line 40
    :cond_7
    :goto_0
    :try_start_3
    invoke-interface {p0, v2}, Lcom/byazt/euv/tt;->zeusSuperOnCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cant start pluginActivity, plugin load failed! pluginPkgName: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " targetActivity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-interface {p0}, Lcom/byazt/euv/tt;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    move-exception p0

    .line 43
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/pangle/plugin/Plugin;)V
    .locals 3

    .line 44
    :try_start_0
    invoke-static {}, Lcom/bytedance/pangle/GlobalParam;->getInstance()Lcom/bytedance/pangle/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/pangle/GlobalParam;->getReporter()Lcom/byazt/blh/c;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 45
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "t_act"

    .line 46
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "p_pkg"

    .line 47
    iget-object v2, p2, Lcom/bytedance/pangle/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "p_vc"

    .line 48
    invoke-virtual {p2}, Lcom/bytedance/pangle/plugin/Plugin;->getVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "p_avc"

    .line 49
    invoke-virtual {p2}, Lcom/bytedance/pangle/plugin/Plugin;->getApiVersionCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "msg"

    .line 50
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    sget-object p0, Lcom/byazt/gvs/tt;->sl:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/byazt/blh/c;->c(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
