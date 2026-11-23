.class public Lcom/kuaishou/weapon/p0/an;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "de.robv.android.xposed.XposedHelpers"

.field public static final b:Ljava/lang/String; = "de.robv.android.xposed.XposedBridge"

.field public static final c:Ljava/lang/String; = "com.elderdrivers.riru.edxp.config.EdXpConfigGlobal"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 2

    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const-string v1, "phone"

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_1

    return v0

    .line 41
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 37
    :try_start_0
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 38
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method private a(Ljava/lang/reflect/Method;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/util/Set;)I
    .locals 2

    const/4 v0, 0x0

    .line 26
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 27
    const-class v1, Landroid/net/wifi/WifiInfo;

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_1
    const-string p1, "getBSSID"

    .line 28
    invoke-direct {p0, v1, p1, p3}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    goto :goto_1

    :pswitch_1
    const-string p1, "getSSID"

    .line 29
    invoke-direct {p0, v1, p1, p3}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    goto :goto_1

    :pswitch_2
    const-string p1, "getMacAddress"

    .line 30
    invoke-direct {p0, v1, p1, p3}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    goto :goto_1

    .line 31
    :pswitch_3
    const-class p1, Ljava/lang/reflect/Method;

    const-string p2, "invoke"

    invoke-direct {p0, p1, p2, p3}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    goto :goto_1

    .line 32
    :pswitch_4
    const-class p1, Ljava/lang/StringBuilder;

    const-string p2, "toString"

    invoke-direct {p0, p1, p2, p3}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    goto :goto_1

    .line 33
    :pswitch_5
    const-class p1, Landroid/provider/Settings$Secure;

    const-string p2, "getString"

    invoke-direct {p0, p1, p2, p3}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    goto :goto_1

    :pswitch_6
    const-string p2, "getSimSerialNumber"

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/kuaishou/weapon/p0/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    goto :goto_1

    :pswitch_7
    const-string p2, "getSubscriberId"

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/kuaishou/weapon/p0/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    goto :goto_1

    :pswitch_8
    const-string p2, "getDeviceId"

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/kuaishou/weapon/p0/an;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/proc/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/maps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v5, ".so"

    .line 6
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".jar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    const-string v5, " "

    .line 7
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 8
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 10
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "com.saurik.substrate"

    .line 11
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 12
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v5, "XposedBridge.jar"

    .line 13
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 14
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 15
    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    nop

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_6

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 16
    :catch_1
    :cond_6
    throw v0

    :catch_2
    move-object v4, v1

    :catch_3
    if-eqz v4, :cond_7

    goto :goto_2

    .line 17
    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_8

    return-object v0

    :cond_8
    return-object v1
.end method

.method public a(Ljava/util/Set;)Ljava/util/Set;
    .locals 4

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 19
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 20
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 21
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v3, "android.app.ResourcesManager#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.view.LayoutInflater#"

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_2
    instance-of v2, v1, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 25
    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 43
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/reflect/Method;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "sHookedMethodCallbacks"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 7

    .line 8
    const-class v0, Landroid/content/pm/PackageManager;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 11
    const-class v2, Ljava/lang/Class;

    const-string v3, "forName"

    invoke-direct {p0, v2, v3, p1}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    const-string v3, "0"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    const-class v2, Ljava/lang/ClassLoader;

    const-string v3, "loadClass"

    invoke-direct {p0, v2, v3, p1}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    const-string v3, "1"

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 14
    :goto_1
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "getStackTrace"

    invoke-direct {p0, v2, v3, p1}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    const-string v3, "2"

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 16
    :goto_2
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "Z2V0SW5zdGFsbGVkUGFja2FnZXM="

    const/4 v3, 0x2

    .line 17
    invoke-static {v2, v3}, Lcom/kuaishou/weapon/p0/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p1}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    const-string v6, "3"

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 18
    :goto_3
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "Z2V0SW5zdGFsbGVkQXBwbGljYXRpb25z"

    .line 19
    invoke-static {v2, v3}, Lcom/kuaishou/weapon/p0/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p1}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    const-string v2, "4"

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 20
    :goto_4
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    const-class v0, Landroid/app/ActivityManager;

    const-string v2, "getRunningServices"

    invoke-direct {p0, v0, v2, p1}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    const-string v2, "5"

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 22
    :goto_5
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    const-class v0, Lorg/json/JSONObject;

    const-string v2, "toString"

    invoke-direct {p0, v0, v2, p1}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    const-string v0, "6"

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    .line 24
    :goto_6
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-object v1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "de.robv.android.xposed.XposedHelpers"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "methodCache"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/Map;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lez v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/util/Set;)Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-object v0

    .line 48
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 49
    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 8

    .line 1
    const-class v0, Landroid/location/Location;

    .line 2
    .line 3
    const-class v1, Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    const-class v2, Landroid/telephony/TelephonyManager;

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "getDeviceId"

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    new-array v6, v5, [Ljava/lang/Class;

    .line 16
    .line 17
    invoke-virtual {p0, v2, v4, v6}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const-string v6, "0"

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v4, 0x0

    .line 29
    :goto_0
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    const-string v4, "getSubscriberId"

    .line 33
    .line 34
    new-array v6, v5, [Ljava/lang/Class;

    .line 35
    .line 36
    invoke-virtual {p0, v2, v4, v6}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const-string v6, "1"

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v4, 0x0

    .line 47
    :goto_1
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    const-string v4, "getSimSerialNumber"

    .line 51
    .line 52
    new-array v6, v5, [Ljava/lang/Class;

    .line 53
    .line 54
    invoke-virtual {p0, v2, v4, v6}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const-string v4, "2"

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/4 v2, 0x0

    .line 65
    :goto_2
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    const-string v2, "getLatitude"

    .line 69
    .line 70
    new-array v4, v5, [Ljava/lang/Class;

    .line 71
    .line 72
    invoke-virtual {p0, v0, v2, v4}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const-string v4, "3"

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    const/4 v2, 0x0

    .line 83
    :goto_3
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    const-string v2, "getLongitude"

    .line 87
    .line 88
    new-array v4, v5, [Ljava/lang/Class;

    .line 89
    .line 90
    invoke-virtual {p0, v0, v2, v4}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const-string v2, "4"

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    goto :goto_4

    .line 100
    :cond_4
    const/4 v0, 0x0

    .line 101
    :goto_4
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    const/16 v2, 0x1a

    .line 107
    .line 108
    const-string v4, "5"

    .line 109
    .line 110
    if-lt v0, v2, :cond_6

    .line 111
    .line 112
    :try_start_1
    const-class v0, Landroid/os/Build;

    .line 113
    .line 114
    const-string v2, "getSerial"

    .line 115
    .line 116
    new-array v6, v5, [Ljava/lang/Class;

    .line 117
    .line 118
    invoke-virtual {p0, v0, v2, v6}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    const/4 v0, 0x1

    .line 125
    goto :goto_5

    .line 126
    :cond_5
    const/4 v0, 0x0

    .line 127
    :goto_5
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_6
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    :goto_6
    const-string v0, "getMacAddress"

    .line 135
    .line 136
    new-array v2, v5, [Ljava/lang/Class;

    .line 137
    .line 138
    invoke-virtual {p0, v1, v0, v2}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    const-string v2, "6"

    .line 143
    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    const/4 v0, 0x1

    .line 147
    goto :goto_7

    .line 148
    :cond_7
    const/4 v0, 0x0

    .line 149
    :goto_7
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    const-string v0, "getBSSID"

    .line 153
    .line 154
    new-array v2, v5, [Ljava/lang/Class;

    .line 155
    .line 156
    invoke-virtual {p0, v1, v0, v2}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    const-string v2, "7"

    .line 161
    .line 162
    if-eqz v0, :cond_8

    .line 163
    .line 164
    const/4 v0, 0x1

    .line 165
    goto :goto_8

    .line 166
    :cond_8
    const/4 v0, 0x0

    .line 167
    :goto_8
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    .line 169
    .line 170
    const-string v0, "getRssi"

    .line 171
    .line 172
    new-array v2, v5, [Ljava/lang/Class;

    .line 173
    .line 174
    invoke-virtual {p0, v1, v0, v2}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    const-string v1, "8"

    .line 179
    .line 180
    if-eqz v0, :cond_9

    .line 181
    .line 182
    const/4 v0, 0x1

    .line 183
    goto :goto_9

    .line 184
    :cond_9
    const/4 v0, 0x0

    .line 185
    :goto_9
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    .line 187
    .line 188
    const-class v0, Ljava/lang/Class;

    .line 189
    .line 190
    const-string v1, "forName"

    .line 191
    .line 192
    new-array v2, v7, [Ljava/lang/Class;

    .line 193
    .line 194
    const-class v4, Ljava/lang/String;

    .line 195
    .line 196
    aput-object v4, v2, v5

    .line 197
    .line 198
    invoke-virtual {p0, v0, v1, v2}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    const-string v1, "9"

    .line 203
    .line 204
    if-eqz v0, :cond_a

    .line 205
    .line 206
    const/4 v0, 0x1

    .line 207
    goto :goto_a

    .line 208
    :cond_a
    const/4 v0, 0x0

    .line 209
    :goto_a
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    .line 211
    .line 212
    const-class v0, Landroid/app/ActivityManager;

    .line 213
    .line 214
    const-string v1, "getRunningServices"

    .line 215
    .line 216
    new-array v2, v7, [Ljava/lang/Class;

    .line 217
    .line 218
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 219
    .line 220
    aput-object v4, v2, v5

    .line 221
    .line 222
    invoke-virtual {p0, v0, v1, v2}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    const-string v1, "10"

    .line 227
    .line 228
    if-eqz v0, :cond_b

    .line 229
    .line 230
    const/4 v5, 0x1

    .line 231
    :cond_b
    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    .line 233
    .line 234
    return-object v3

    .line 235
    :catch_0
    const/4 v0, 0x0

    .line 236
    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 8

    .line 1
    const-class v0, Landroid/hardware/Camera$PictureCallback;

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    const-class v2, Landroid/media/MediaRecorder;

    .line 9
    .line 10
    const-string v3, "setOutputFile"

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    new-array v5, v4, [Ljava/lang/Class;

    .line 14
    .line 15
    const-class v6, Ljava/lang/String;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    aput-object v6, v5, v7

    .line 19
    .line 20
    invoke-virtual {p0, v2, v3, v5}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    const-string v3, "0"

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    :cond_1
    const-class v2, Landroid/hardware/Camera;

    .line 37
    .line 38
    const-string v3, "takePicture"

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    new-array v5, v5, [Ljava/lang/Class;

    .line 42
    .line 43
    const-class v6, Landroid/hardware/Camera$ShutterCallback;

    .line 44
    .line 45
    aput-object v6, v5, v7

    .line 46
    .line 47
    aput-object v0, v5, v4

    .line 48
    .line 49
    const/4 v6, 0x2

    .line 50
    aput-object v0, v5, v6

    .line 51
    .line 52
    invoke-virtual {p0, v2, v3, v5}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    const-string v2, "1"

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 v0, 0x0

    .line 65
    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    :cond_3
    const-class v0, Landroid/media/MediaPlayer;

    .line 69
    .line 70
    const-string v2, "setDataSource"

    .line 71
    .line 72
    new-array v3, v6, [Ljava/lang/Class;

    .line 73
    .line 74
    const-class v5, Landroid/content/Context;

    .line 75
    .line 76
    aput-object v5, v3, v7

    .line 77
    .line 78
    const-class v5, Landroid/net/Uri;

    .line 79
    .line 80
    aput-object v5, v3, v4

    .line 81
    .line 82
    invoke-virtual {p0, v0, v2, v3}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    const-string v2, "2"

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    const/4 v4, 0x0

    .line 94
    :goto_2
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 98
    .line 99
    .line 100
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    if-lez v0, :cond_6

    .line 102
    .line 103
    return-object v1

    .line 104
    :catch_0
    :cond_6
    const/4 v0, 0x0

    .line 105
    return-object v0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 11

    .line 1
    const-class v0, Ljava/security/MessageDigest;

    .line 2
    .line 3
    const-class v1, Ljava/lang/String;

    .line 4
    .line 5
    const-class v2, [B

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-class v5, Ljavax/crypto/Cipher;

    .line 14
    .line 15
    const-string v6, "doFinal"

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    new-array v8, v7, [Ljava/lang/Class;

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    aput-object v2, v8, v9

    .line 22
    .line 23
    invoke-virtual {p0, v5, v6, v8}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const-string v6, "0"

    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    const/4 v8, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v8, 0x0

    .line 34
    :goto_0
    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    const-class v6, Ljava/security/SecureRandom;

    .line 38
    .line 39
    const-string v8, "setSeed"

    .line 40
    .line 41
    new-array v10, v7, [Ljava/lang/Class;

    .line 42
    .line 43
    aput-object v2, v10, v9

    .line 44
    .line 45
    invoke-virtual {p0, v6, v8, v10}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    const-string v8, "1"

    .line 50
    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    const/4 v10, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v10, 0x0

    .line 56
    :goto_1
    invoke-virtual {v4, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    :cond_2
    const-string v6, "update"

    .line 63
    .line 64
    new-array v8, v7, [Ljava/lang/Class;

    .line 65
    .line 66
    aput-object v2, v8, v9

    .line 67
    .line 68
    invoke-virtual {p0, v0, v6, v8}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const-string v6, "2"

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    const/4 v8, 0x1

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    const/4 v8, 0x0

    .line 79
    :goto_2
    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    :cond_4
    const-string v2, "getInstance"

    .line 86
    .line 87
    new-array v6, v7, [Ljava/lang/Class;

    .line 88
    .line 89
    aput-object v1, v6, v9

    .line 90
    .line 91
    invoke-virtual {p0, v0, v2, v6}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const-string v2, "3"

    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    const/4 v6, 0x1

    .line 100
    goto :goto_3

    .line 101
    :cond_5
    const/4 v6, 0x0

    .line 102
    :goto_3
    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    const/4 v5, 0x1

    .line 108
    :cond_6
    const-class v0, Landroid/net/Uri;

    .line 109
    .line 110
    const-string v2, "parse"

    .line 111
    .line 112
    new-array v6, v7, [Ljava/lang/Class;

    .line 113
    .line 114
    aput-object v1, v6, v9

    .line 115
    .line 116
    invoke-virtual {p0, v0, v2, v6}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    const-string v2, "4"

    .line 121
    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    const/4 v6, 0x1

    .line 125
    goto :goto_4

    .line 126
    :cond_7
    const/4 v6, 0x0

    .line 127
    :goto_4
    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    .line 129
    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    const/4 v5, 0x1

    .line 133
    :cond_8
    const-class v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 134
    .line 135
    const-string v2, "execSQL"

    .line 136
    .line 137
    new-array v6, v7, [Ljava/lang/Class;

    .line 138
    .line 139
    aput-object v1, v6, v9

    .line 140
    .line 141
    invoke-virtual {p0, v0, v2, v6}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    const-string v1, "5"

    .line 146
    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    const/4 v2, 0x1

    .line 150
    goto :goto_5

    .line 151
    :cond_9
    const/4 v2, 0x0

    .line 152
    :goto_5
    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    if-eqz v0, :cond_a

    .line 156
    .line 157
    const/4 v5, 0x1

    .line 158
    :cond_a
    const-class v0, Landroid/app/Activity;

    .line 159
    .line 160
    const-string v1, "finish"

    .line 161
    .line 162
    new-array v2, v9, [Ljava/lang/Class;

    .line 163
    .line 164
    invoke-virtual {p0, v0, v1, v2}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    const-string v1, "6"

    .line 169
    .line 170
    if-eqz v0, :cond_b

    .line 171
    .line 172
    const/4 v9, 0x1

    .line 173
    :cond_b
    invoke-virtual {v4, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 175
    .line 176
    if-eqz v0, :cond_c

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_c
    move v7, v5

    .line 180
    :goto_6
    if-eqz v7, :cond_d

    .line 181
    .line 182
    return-object v4

    .line 183
    :catch_0
    :cond_d
    return-object v3
.end method

.method public g()Lorg/json/JSONObject;
    .locals 11

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const-class v1, [B

    .line 4
    .line 5
    const-string v2, "toString"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-class v5, Lorg/json/JSONObject;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    new-array v7, v6, [Ljava/lang/Class;

    .line 17
    .line 18
    invoke-virtual {p0, v5, v2, v7}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const/4 v7, 0x1

    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    const-string v8, "0"

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v5, 0x0

    .line 32
    :goto_0
    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    :cond_1
    const-class v5, Landroid/text/TextUtils;

    .line 36
    .line 37
    const-string v8, "isEmpty"

    .line 38
    .line 39
    new-array v9, v7, [Ljava/lang/Class;

    .line 40
    .line 41
    const-class v10, Ljava/lang/CharSequence;

    .line 42
    .line 43
    aput-object v10, v9, v6

    .line 44
    .line 45
    invoke-virtual {p0, v5, v8, v9}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    const-string v8, "1"

    .line 52
    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v5, 0x0

    .line 58
    :goto_1
    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    :cond_3
    const-class v5, Lorg/json/JSONArray;

    .line 62
    .line 63
    new-array v8, v6, [Ljava/lang/Class;

    .line 64
    .line 65
    invoke-virtual {p0, v5, v2, v8}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    const-string v5, "2"

    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    const/4 v2, 0x0

    .line 78
    :goto_2
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    :cond_5
    const-class v2, Ljavax/crypto/Cipher;

    .line 82
    .line 83
    const-string v5, "doFinal"

    .line 84
    .line 85
    new-array v8, v7, [Ljava/lang/Class;

    .line 86
    .line 87
    aput-object v1, v8, v6

    .line 88
    .line 89
    invoke-virtual {p0, v2, v5, v8}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_7

    .line 94
    .line 95
    const-string v5, "3"

    .line 96
    .line 97
    if-eqz v2, :cond_6

    .line 98
    .line 99
    const/4 v2, 0x1

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    const/4 v2, 0x0

    .line 102
    :goto_3
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    :cond_7
    const-class v2, Ljava/io/ByteArrayOutputStream;

    .line 106
    .line 107
    const-string v5, "toByteArray"

    .line 108
    .line 109
    new-array v8, v6, [Ljava/lang/Class;

    .line 110
    .line 111
    invoke-virtual {p0, v2, v5, v8}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_9

    .line 116
    .line 117
    const-string v5, "4"

    .line 118
    .line 119
    if-eqz v2, :cond_8

    .line 120
    .line 121
    const/4 v2, 0x1

    .line 122
    goto :goto_4

    .line 123
    :cond_8
    const/4 v2, 0x0

    .line 124
    :goto_4
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    .line 126
    .line 127
    :cond_9
    const-class v2, Ljava/io/FileOutputStream;

    .line 128
    .line 129
    const-string v5, "write"

    .line 130
    .line 131
    new-array v8, v7, [Ljava/lang/Class;

    .line 132
    .line 133
    aput-object v1, v8, v6

    .line 134
    .line 135
    invoke-virtual {p0, v2, v5, v8}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_b

    .line 140
    .line 141
    const-string v2, "5"

    .line 142
    .line 143
    if-eqz v1, :cond_a

    .line 144
    .line 145
    const/4 v1, 0x1

    .line 146
    goto :goto_5

    .line 147
    :cond_a
    const/4 v1, 0x0

    .line 148
    :goto_5
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 149
    .line 150
    .line 151
    :cond_b
    const-class v1, Ljava/net/HttpURLConnection;

    .line 152
    .line 153
    const-string v2, "setRequestProperty"

    .line 154
    .line 155
    const/4 v5, 0x2

    .line 156
    new-array v5, v5, [Ljava/lang/Class;

    .line 157
    .line 158
    aput-object v0, v5, v6

    .line 159
    .line 160
    aput-object v0, v5, v7

    .line 161
    .line 162
    invoke-virtual {p0, v1, v2, v5}, Lcom/kuaishou/weapon/p0/an;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_d

    .line 167
    .line 168
    const-string v1, "6"

    .line 169
    .line 170
    if-eqz v0, :cond_c

    .line 171
    .line 172
    const/4 v6, 0x1

    .line 173
    :cond_c
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    .line 175
    .line 176
    :cond_d
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    .line 177
    .line 178
    .line 179
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    if-lez v0, :cond_e

    .line 181
    .line 182
    return-object v4

    .line 183
    :catch_0
    :cond_e
    return-object v3
.end method
